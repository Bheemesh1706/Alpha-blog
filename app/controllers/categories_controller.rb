class   CategoriesController < ApplicationController

    def show
        @category = Category.new
    end

    def index
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            flash[:notice] = "Category was sucessfully created"
            redirect_to @category
        else
            render 'new'
        end
    end

    private

      def category_params
        params.require(:category).permit(:name)
      end
end