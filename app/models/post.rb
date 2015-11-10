class Post < ActiveResource::Base

  self.site = "http://localhost:3000"

  has_many :comments

  # before_save :validate

  def update_post(params={})
    self.title = params[:title]
    self.description = params[:description]
    self.author = params[:author]

    self.save
  end

  def as_json(options)
    super.merge(:include=>[:comments])
  end


  protected

  def validate
    errors.add_on_empty %w(title description author)
  end
end
