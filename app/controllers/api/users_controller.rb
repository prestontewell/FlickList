class Api::UsersController < ApplicationController
  
  def create
    user = User.new(
      name: "Preston Tewell",
      email: "prestontewell@gmail.com",
      username: "the_dude",
      password: "password",
      password_confirmation: "password",
      avatar_url: "null",
    )
    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
