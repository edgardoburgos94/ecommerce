class SubCategoriesController < ApplicationController
  def index
    @sub_categories = Category.find(params[:category_id]).sub_categories
  end
end
