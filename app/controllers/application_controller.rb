class ApplicationController < ActionController::Base


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
end
