class TherapiesController < ApplicationController

  def index 
    @therapies = Therapy.all
  end

  def show
    @therapy = Therapy.find(params[:id])
  end
  
end
