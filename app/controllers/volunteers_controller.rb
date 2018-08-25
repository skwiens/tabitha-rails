class VolunteersController < ApplicationController
  def index
    @volunteers = Volunteer.order(:name)
  end

  def show
    @volunteer = Volunteer.find_by(id: params[:id])
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)

    if @volunteer.save
      flash[:success] = "Successfully created #{@volunteer.name}"

      redirect_to volunteers_path
    else
      flash[:failure] = "A problem occurred. Could not create volunteer"

      if @volunteer.errors.any?
        flash.now[:errors] = @volunteer.errors
      end

      render :new
    end

  end

  private
  def volunteer_params
    return params.require(:volunteer).permit(:name, :role, :email, :phone, :notes)
  end

end
