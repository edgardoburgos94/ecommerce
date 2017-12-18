class PagesController < ApplicationController

  def about
  end

  def alfa
  end

  def contact
  end

  def admin
  end

  def cate_list
    @categories = Category.all
  end

  def produ_list
    @products = Product.all
  end



end
