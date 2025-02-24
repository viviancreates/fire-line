class ProspectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  def new
    @prospect = Prospect.new
  end

  def create
    @prospect = Prospect.new(prospect_params)
    if @prospect.save
      flash[:notice] = "Thank you! We'll keep you updated."
      redirect_to root_path
    else
      flash[:alert] = "There was an error. Please try again."
      render :new
    end
  end

  private

  def prospect_params
    params.require(:prospect).permit(:email, :name)
  end

end

