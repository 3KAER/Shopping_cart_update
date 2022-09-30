module ApplicationHelper
   
    def current_order
       
        
        begin
        if !session[:user_id].nil?
             
            Order.find(session[:user_id])
        else
            Order.new
        end
    rescue
        Order.new 
    
    end



    end 
    def current_order_item
        if !session[:order_id].nil?
             
            Order.find(session[:order_id])
        else
            Order.new
        end
    end

       
end
