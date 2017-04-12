class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
  end

  def edit
    @author = Author.find_by(params[:id])
  end
end
