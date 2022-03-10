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
end
