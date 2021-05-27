class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    return redirect_to @recipe if @recipe.save

    flash[:alert] = 'Você deve informar todos os dados da receita'
      
    render :new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    return redirect_to @recipe if @recipe.update(recipe_params)

    flash[:alert] = 'Você deve informar todos os dados da receita'
    
    render :edit
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :recipe_type, :cuisine, :difficulty,
                                   :cook_time, :ingredients, :cook_method)
  end
end
