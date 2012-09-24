class FrontPageController < ApplicationController
  def index
    @post = Post.last

    render :layout => 'frontpage'
  end
end
