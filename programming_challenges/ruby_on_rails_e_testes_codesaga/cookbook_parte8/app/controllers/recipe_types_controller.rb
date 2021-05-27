class RecipeTypesController < ApplicationController
    def new
        @recipe_type = RecipeType.new
    end

    def show
        @recipe_type = RecipeType.find(params[:id])
    end

    def create
        @recipe_type = RecipeType.new(recipe_type_params)
        if @recipe_type.save
            redirect_to @recipe_type
        else
            flash[:alert] = 'Você deve informar o nome do tipo de receita'
            render :new
        end
    end

    private

    def recipe_type_params
        params.require(:recipe_type).permit(:name)
    end
end
