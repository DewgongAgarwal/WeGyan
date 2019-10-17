class TestimonialsController < ApplicationController

  def new
      @student = params[:student_id].to_i
      render :new
  end

  def create
      @testimonial = Testimonial.new(testimonial_params)
      puts(1)
      respond_to do |format|
          if @testimonial.save
              format.html { redirect_to current_students_path(i_id), notice: 'Testimonial was successfully created.' }
              format.json { render :show, status: :created, location: @testimonial }
              
              else
              format.html { render :new }
              format.json { render json: @testimonial.errors, status: :unprocessable_entity }
          end
      end
      
  end
  
  private
  def testimonial_params
      params.require(:testimonial).permit(:s_id, :i_id, :date, :description)
  end
end
