class Comment < ActiveResource::Base
  self.site = "http://localhost:3000/posts/:post_id"
  belongs_to :posts
end
