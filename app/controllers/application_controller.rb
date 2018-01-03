class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

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
