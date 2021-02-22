class RecipesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :result]
    def index
        @recipes=Recipe.paginate(page: params[:page], per_page: 5)
    end

    def show
        @recipe=Recipe.find(params[:id])
  
    end
    

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.new(recipe_params)
        @recipe.author=current_user.email
        if @recipe.save
            redirect_to @recipe
        else redirect_to new_recipe_path
        end
    end

    def edit
        @recipe = Recipe.find(params[:id])
    end
    
    def update
        @recipe = Recipe.find(params[:id])
        if @recipe.update_attributes(recipe_params)
            redirect_to @recipe
        else redirect_to edit_recipe_path
        end
    end

    def destroy
        @recipe=Recipe.find(params[:id])
        @recipe.destroy
        redirect_to recipes_path
    end
    def result
        respond_to do |format|
            format.html { @recipes = Recipe.where("method = ?", params[:method]) }
          end
end
    private

    def recipe_params
        params.require(:recipe).permit(:title, :method, :summary, :body, )
    end
end

