class CardsController < ApplicationController
  def show
   

   
      @order_item = OrderItem.find_by(params[:user_id])
      
      @order_items = current_order.order_items
    

          
   end
   
   
def history
  
  @orders = OrderItem.all

end
 

def destroy
  @order = current_order
  @order_item = @order.order_items.find(params[:id])
  @order_item.destroy
  @order_items = current_order.order_items
  redirect_to cards_show_path

end
def update
  @order = current_order
  @order_item = @order.order_items.find(params[:id])
  @order_item.update(order_params)
  @order_items = current_order.order_items
  redirect_to cards_show_path
end

end
