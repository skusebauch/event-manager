class EventsController < ApplicationController
  before_action :find_category

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

  def destroy
    # find_category
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
end
