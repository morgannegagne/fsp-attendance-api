class Api::V1::SigninsController < ApplicationController

  def index
    @signins = Signin.all
    render json: @signins
  end


  def create
    @signin = Signin.new(signin_params)

    if @signin.save
      render json: @signin
    else
      render json: {errors: @signin.errors.full_messages}, status: 422
    end
  end

  def update
    @signin = Signin.find(params[:id])

    @signin.update(signin_params)
    if @signin.save
      render json: @signin
    else
      render json: {errors: @signin.errors.full_messages}, status: 422
    end
  end

  private
  def signin_params
    params.require(:signin).permit(:time, :date, :user_id)
  end
end
