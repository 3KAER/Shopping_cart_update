class StoresController < ApplicationController
    def index
        @stores = Store.all
    end

    def show 
        @store = Store.find_by(id: params[:id])
        @products = Product.all
        @users = User.all
    end

    def new
        @store = Store.new
    end

    def create
        @store = Store.new(store_params)
        @user = User.find_by(id: session[:user_id])
    
        @store.user_id = session[:user_id]
        if @store.save
            @user.update_attribute(:role, 1)
            @user.update_attribute(:store_id, current_user.id)
            
            flash[:success] = 'Create store successfully!'
            redirect_to root_path 
        else
            flash[:warning] = "Cannot create store!!"
            render :new
        end
        
        
    end

    def edit
        @store = Store.find(params[:id])
    end

    def update
        @store = Store.find(params[:id])
        if @store.update(store_params)
          
          flash[:success] = "Information updated"
          redirect_to @store
        else
        render 'edit'
        end
    end
    
    def destroy
        
    end
    def history
        @order = current_order 
    end
   

    private
        def store_params
            params.require(:store).permit(:name, :user_id, :description)
        end
end

