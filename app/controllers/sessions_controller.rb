class SessionsController < ApplicationController
  def new
  end
  
  def create
    consumer = Consumer.find_by_email(params[:email])
    if consumer && consumer.authenticate(params[:password])
      session[:consumer_id] = consumer.id
      redirect_to tasks_path, notice: "You have successfully logged in."
    else
      flash.now[:alert] = "Email or Password is invalid."
      render :new
    end
  end
  
  def destroy
    session[:consumer_id] = nil
    redirect_to root_path, notice: "You have successfully logged out."
  end
end
