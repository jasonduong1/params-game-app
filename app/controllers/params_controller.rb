class ParamsController < ApplicationController
  def name
    input = params[:name]
    output = "your name is #{input}"
    if input.starts_with?("a")
      output = "Hey! Your name starts with A!" #http://localhost:3000/name_path?name=alex
    end
    render json: { message: output } #http://localhost:3000/name_path?name=jason
  end

  def pathing
    input = params[:sub_one]
    input2 = params[:sub_two]
    output = "here they are #{input} and #{input2}"
    render json: { message: output }
  end

  def guess_number
    winning_number = 36
    input_guess = params[:number].to_i
    if input_guess > winning_number
      output_message = "Guess lower!"
    elsif input_guess < winning_number
      output_message = "Guess higher!"
    else
      output_message = "YOU DID IT. YAY."
    end
    render json: { message: output_message }
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
    else
      render json: { message: "invalid credentials" }
    end
  end
end
