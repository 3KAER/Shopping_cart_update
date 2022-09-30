
class HomeController < ApplicationController
    def index
      @products = Product.all
      
      @order_item = current_order.order_items.new
    end
   def about
   end
def header
  @order_item = current_order.order_items.new
  @products = Product.all
end
    def contact
    end
      def shop
        @products = Product.all

        @order_item = current_order.order_items.new
      end
      def login
      end
      def signup
        
end
def testimal
end

end