%w[sinatra haml sass bluecloth].each { |r| require r }

PAGES = Dir.glob('docs/*.md').map { |doc| doc[/docs\/([a-z]+)\.md/i, 1] }

helpers do
  def link_to(text, href = nil)
    href ||= text
    "<a href='#{href}'>#{text}</a>"
  end
end

get '/:sheet.css' do |sheet|
  content_type 'text/css', :charset => 'utf-8'
  sass :"../sass/#{sheet}"
end

get '/' do
  @content = BlueCloth.new(File.read('README.md')).to_html
  haml '', :ugly => true
end

get '/:page' do |page|
  halt 404, 'Not Found' unless page = PAGES.detect { |p| p.downcase == page.downcase }

  @rendered_pages ||= {}
  @rendered_pages[page] ||= BlueCloth.new(File.read("docs/#{page}.md")).to_html
  @content = @rendered_pages[page]
  haml '', :ugly => true
end
