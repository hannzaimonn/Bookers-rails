class UsersController < ApplicationController

	def index
		@users = User.all
		@post = Post.new
	end

	def show
		@user = User.find(params[:id])
		@post = Post.new
		

	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to user_path(@user)
	end

    def books
    	@users = User.all
    	@post = Post.new
    	@post = Post.all
    end

  private

   def user_params
   	   params.require(:user).permit(:name, :introduction, :image)
   end

end