class CategoriesController < ApplicationController
  before_action :find_category, except: [:index, :create ]
  def index
    @categories = Category.all
    # get form to create category
    @category = Category.new
  end
  def show
    @events = Event.all
    @event = Event.new
  end
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new
    end

  end

  def edit
    # find_category
  end

  def update
    # find_category
    if @category.update(category_params)
      redirect_to category_path(@category)
    else
      render :edit
    end
  end

  def destroy
    # find_category
    raise
    @category.destroy
    redirect_to categories_path
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end