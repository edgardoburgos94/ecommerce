class PagesController < ApplicationController

  def about
  end

  def alfa
  end

  def contact
  end

  def admin
  end

  def suppli
    if supplier_signed_in?
      @supplier = current_supplier
    end
  end

  def my_profile
    if user_signed_in?
      @user = current_user
    end
  end

  def cate_list
    @categories = Category.all
  end

  def produ_list
    @products = Product.all
  end

  def user_list
    @users = User.all
  end

  def suppli_list
    @suppliers = Supplier.all
  end



end
