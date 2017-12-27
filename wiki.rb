require "sinatra"


def page_content(title)
	File.read("pages/#{title}.txt")
rescue Errno::ENOENT
	return nil
end

#this route is the root route; the welcome.erb page is shown located
#at /views folder.
get "/" do 
	erb :welcome
end


#this route does two things, first if gets the URL and uses it as a title and the
#it uses the title as a refence to the file name, which page_content reads and displays it
#on the page
get "/:title" do
	page_content(params[:title])
end
