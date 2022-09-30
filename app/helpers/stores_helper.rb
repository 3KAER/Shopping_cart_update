module StoresHelper
    def current_store
        @user = User.find_by(id: session[:user_id])
        if (@user && @user.role == 1)
            @user.store  
        else 
            return nil
        end
    end

    def create_store?
        !current_store.nil?
    end
end
