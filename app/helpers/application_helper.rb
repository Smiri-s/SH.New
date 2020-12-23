module ApplicationHelper
    def login_helper style = ''
        if current_user.is_a?(GuestUser)
        (link_to "Register", new_user_registration_path, class: style) + " ". html_safe +    # ose futi tek class nje 'nav-link' dhe ku therret login helper e le bosh  
        (link_to "Login", new_user_session_path, class: style)  
          
       else 
        link_to "Logout", destroy_user_session_path, method: :delete, class: style
       end 
    end

    def source_helper
         if session[:source] 
            content_tag(:p, "Thanks for visiting me from #{session[:source]}", class:"my-class")
         end
    end


end
 