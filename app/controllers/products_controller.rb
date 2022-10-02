class ProductsController < ApplicationController
  before_action :logged_in?

  # GET /products
  # GET /products.json
  def index
    @order_item = current_order.order_items.new
    @products = Product.all
    @q = Product.ransack(params[:q])
    @products = @q.result
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find_by(id: params[:id])
    @order_item = current_order.order_items.new
    
  end

  # GET /products/new
  def new
    @product = Product.new
    
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product
    else
      redirect_to root_path
    end
 
  end

  # POST /products
  # POST /products.json
  def create
    
    @product = current_store.products.build(product_params)
   respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  
  # DELETE /products/1
  # DELETE /products/1.json
  

  def destroy

  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :price, :image,:store_id,:describe)
    end
end