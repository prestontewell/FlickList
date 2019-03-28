class Api::UsersController < ApplicationController
  
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      username: params[:username],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      avatar_url: params[:avatar_url]
    )
    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
