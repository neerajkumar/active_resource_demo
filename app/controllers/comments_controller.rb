class CommentsController < ApplicationController
  def index
    @post = Comment.all
  end
end
