class UsersController < ApplicationController
#
#   def show
#     @user = User.find(params[:id])
#   end
#
#   def new
#     @user = User.new
#   end
#
#   def create
#     @user = User.new(user_params)
#     if @user.save
#       redirect_to user_path(@user)
#     else
#       render :new
#     end
#   end
#
#   def edit
#     @user = User.find(params[:id])
#   end
#
#
#   def update
#   end
#
#   def destroy
#     @user = User.find(params[:id])
#     @user.destroy
#     #redirect_to users_path
#   end
#
#   def user_params
#     params.require(:user).permit(:name, :email, :password, :password_confirmation)
#   end
end
