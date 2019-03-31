class Api::UsersController < ApplicationController
  
  def create
    @user = User.new(
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

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.username = params[:username] || @user.username
    if params[:password]
      @user.password = params[:password]
      @user.password_confirmation = params[:password_confirmation]
    end

    if @user.save
      render json: {message: 'User updated successfully.'}, status: :ok
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end