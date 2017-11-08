class AuthorsController < ApplicationController
  def new
  end
  def show
  end

  def create
    @author = Author.new(params[:article])
    
     @author.save
     redirect_to @author
  end
end
