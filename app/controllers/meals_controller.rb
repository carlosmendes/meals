class MealsController < ApplicationController
  def index
  	@meals = Meal.all
  end

  def show
  	@meal = Meal.find(params[:id])
  end

  def new #render the form to create the meal
  	@meal = Meal.new
  	
  end

  def create #save the params that came from submitting the form
  	Meal.create(meal_params)
  	redirect_to meals_path
  end

  def destroy
  	@meal = Meal.find(params[:id])
  	@meal.destroy
  	redirect_to meals_path
  	
  end

  def copy
  	@meal = Meal.find(params[:id])
  	new_meal = @meal.dup
  	new_meal.save
  	redirect_to meals_path
  end

  private

  def meal_params
  	params.require(:meal).permit(:name, :ingredients, :cost)
  end

end
