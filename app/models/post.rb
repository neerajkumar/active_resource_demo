class Post < ActiveResource::Base

  self.site = "http://localhost:3000"

  def update_post(params={})
    self.title = params[:title]
    self.description = params[:description]
    self.author = params[:author]

    self.save
  end
  
end
