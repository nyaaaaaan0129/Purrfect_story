# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_admins_path
    when Member
      root_path
    end
  end

  def after_sign_up_path_for(resource)
    case resource
    when Admin
      admin_admins_path
    when Member
      root_path
        end
    end

  def after_sign_out_path_for(resource)
    if resource == :admin
      new_admin_session_path
    else
      new_member_session_path
      end
  end

   protected

  def configure_permitted_parameters
    added_attrs1 = [ :email, :last_name, :first_name, :password, :password_confirmation ]
    added_attrs2 = [ :email, :password, :password_confirmation ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs1
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs1
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs2
  end
end
