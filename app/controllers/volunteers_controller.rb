class VolunteersController < ApplicationController
  def show
      @my_volunteers = CurrentStudent.where(i_id: params[:id])
  end
  
  def destroy
      CurrentStudent.find(params[:id]).delete
      redirect_back(fallback_location: root_path)
  end
end
