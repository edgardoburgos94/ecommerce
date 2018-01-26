class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'application'
  before_action :set_layout_variables
  def set_layout_variables
    @categories = Category.all
  end

  include ApplicationHelper

  protected

  def devise_parameter_sanitizer
    if resource_class == User
      User::ParameterSanitizer.new(User, :user, params)
    elsif resource_class == Supplier
      Supplier::ParameterSanitizer.new(Supplier, :supplier, params)
    else
      super # Use the default one
    end
  end

end
