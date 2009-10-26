require 'app'

require 'rack/utils'
require 'hpricot'
require 'coderay'
class Highlighter
  include Rack::Utils

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    headers = HeaderHash.new(headers)

    if !STATUS_WITH_NO_ENTITY_BODY.include?(status) &&
       !headers['transfer-encoding'] &&
        headers['content-type'] &&
        headers['content-type'].include?("text/html")

      content = ""
      response.each { |part| content += part }
      doc = Hpricot(content)
      doc.search('pre>code').each do |node|
        node.parent.swap highlight_block(node.inner_html)
      end
      doc.search('code').each do |node|
        node.swap highlight_inline(node.inner_html)
      end

      body = doc.to_html
      headers['content-length'] = bytesize(body).to_s

      [status, headers, [body]]
    else
      [status, headers, response]  
    end
  end

  def highlight(s)
    highlighter = case s[0]
    when 38 then :html
    else :java_script
    end
    CodeRay.encoder(:html).encode unescape_html(s), highlighter
  end

  def highlight_block(s)
    "<pre class='CodeRay'>#{highlight(s)}</pre>"
  end

  def highlight_inline(s)
    "<span class='CodeRay'>#{highlight(s)}</span>"
  end

  def unescape_html(string)
    string.to_s.gsub("&lt;", '<').gsub("&gt;", '>').gsub("&amp;", '&')
  end
end

use Highlighter

set :run, false
run Sinatra::Application
