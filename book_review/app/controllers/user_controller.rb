class UserController < ApplicationController
  def index
  	@user = User.all
  	# @reviews = Review.all
  end

  def show
  	@user = User.all
  	@reviews = Review.all
  	@book = Book.all
  end

end
