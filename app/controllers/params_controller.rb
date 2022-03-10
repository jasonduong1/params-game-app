class ParamsController < ApplicationController
  def name
    input = params[:name]
    output = "your name is #{input}"
    render json: { message: output }
  end

  def pathing
    input = params[:sub_one]
    input2 = params[:sub_two]
    output = "here they are #{input} and #{input2}"
    render json: { message: output }
  end

  def guess_number
    input = params[:number]
    output = "your guess is #{input}"
    render json: { message: output }
  end

  def secret
    input = params[:secret_info]
    output = "the secret is #{input}"
    render json: { messge: output }
  end

  def login
    user_input = params[:user]
    pw_input = params[:pw]
    if user_input == "hugh" && pw_input == "swordfish"
      render json: { message: "valid credentials" }
    end
    render json: { message: "invalid credentials" }
  end
end
