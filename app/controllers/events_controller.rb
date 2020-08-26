class EventsController < ApplicationController
  before_action :find_category, only: [:new, :create]
  before_action :find_event, except: [:new, :create]

  def show
    #find event
    raise
  end

  def create
    # find_category
    @event = Event.new(event_params)
    # assign user to event
    @event.user = current_user
    @event.category = @category
    if @event.save
      redirect_to category_path(@category)
    else
      render "categories/show"
    end
  end

  def edit
    #find event
  end

  def update
    if @event.update(event_params)
      redirect_to category_path(@category)
    else
      :edit
    end
  end


  def destroy
    #finde_event
    @event.destroy
    redirect_to category_path(@category)
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :start_date, :end_date)
  end

  def find_category
    @category = Category.find(params[:category_id])
  end

  def find_event
    @event = Event.find(params[:id])
  end
end
