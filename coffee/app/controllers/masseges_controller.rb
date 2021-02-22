class MassegesController < ApplicationController

        def create
            @category = Category.find(params[:category_id])
            @massege=@category.masseges.create(massege_params)
            redirect_to category_path(@category)
        end
    
        def destroy
            @massege=Massege.find(params[:id])
            @massege.destroy
            redirect_to recipe_path(@recipe)
        end
    
        private
    
        def massege_params
            params.require(:massege).permit(:author, :body)
        end
    
    
end
