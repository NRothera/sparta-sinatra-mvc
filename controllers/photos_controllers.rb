class PhotosController < Sinatra::Base

  #Setsroot as the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  $photos = [{
	 id: 0,
	 title: "Photo 1",
	 body: "This is the first post",
   image: "http://fillmurray.com/300/300"
},
{
    id: 1,
    title: "Photo 2",
    body: "This is the second post",
    image: "http://fillmurray.com/300/300"
},
{
    id: 2,
    title: "Photo 3",
    body: "This is the third post"
}]

  get "/" do
    @title = "Photo Homepage"
    erb :'photos/home'
  end

  get "/photos" do
    @title = "Photos"
    @photos = $photos
    erb :'photos/index'
  end

  get "/photos/new" do

    erb :'photos/new'

  end

  post "/photos" do

    "Create a new photo"

  end

  get "/photos/:id/edit" do
    erb :'photos/edit'

  end

  get "/photos/:id" do

    id = params[:id].to_i

    @photo = $photos[id]
    erb :'photos/show'

  end

  put "/photos/:id" do

    "update photo"

  end

  delete "/photos/:id" do

    "delete photo"

  end


end
