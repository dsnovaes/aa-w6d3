class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find_by(id: params[:id])
  end

  def create
    user = User.new(user_params)
    user.save
    render json: user
  end

  def update
    user = User.find_by(id: params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    if user.nil?
      raise "user not found"
    else
      user.destroy
      redirect_to users_url
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end


end
