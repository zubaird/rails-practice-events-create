class EventsController < ApplicationController


  def index
    @events = Event.all
  end


  def new
    @events = Event.new
  end

  def create
    @events = Event.new(event_params)
    if @events.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(
    :date,
    :description,
    :capacity,
    :directions,
    :requires_id,
    )
  end
end
