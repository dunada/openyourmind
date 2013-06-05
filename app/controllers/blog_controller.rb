# encoding: utf-8
class BlogController < ApplicationController
 
	
  
  def index
    @posts=Post.published.sort(:published_at.desc)
  end

  def post
    @post=Post.find_by_path(params[:path])
  end





 
end
