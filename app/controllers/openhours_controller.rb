class OpenhoursController < ApplicationController
  def index
    @openhours = Openhour.order(:date)
  end

  def show
    @openhour = Openhour.find_by(id: params[:id])
  end

  def new
    @openhour = Openhour.new
  end

  def create
    puts params.inspect

    @openhour = Openhour.new(openhour_params)

    if @openhour.save
      flash[:success] = "Successfully created event for #{@openhour.date.strftime('%B %d, %Y')}"

      redirect_to openhours_path
    else
      flash[:failure] = "A problem occurred. Try creating these shifts later."

      if @openhour.errors.any?
        flash.now[:errors] = @openhour.errors
      end

      render :new
    end
  end



  def edit
  end

  def update
  end

  private

  def openhour_params
    return params.require(:openhour).permit(:date)
  end
end
