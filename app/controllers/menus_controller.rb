class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.all
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
  end

  # GET /menus/new
  def new
    @menu = Menu.new
  end

  # GET /menus/1/edit
  def edit
  end

  # POST /menus
  # POST /menus.json
  def create
    @menu = Menu.new(menu_params)

    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'Menu was successfully created.' }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:name, :imageUrl, :price, :description)
    end
end

class OrdersController < ApplicationController
    before_action :set_order, only: [:show, :edit, :update, :destroy]
    
    # GET /orders
    # GET /orders.json
    def index
        @orders = Order.all
    end
    
    # GET /orders/1
    # GET /orders/1.json
    def show
    end
    
    # GET /orders/new
    def new
        @order = Order.new
    end
    
    # GET /orders/1/edit
    def edit
    end
    
    # POST /orders
    # POST /orders.json
    def create
        @order = Order.new(order_params)
        
        respond_to do |format|
            if @order.save
                format.html { redirect_to @order, notice: 'Order was successfully created.' }
                format.json { render :show, status: :created, location: @order }
                else
                format.html { render :new }
                format.json { render json: @order.errors, status: :unprocessable_entity }
            end
        end
    end
    
    # PATCH/PUT /orders/1
    # PATCH/PUT /orders/1.json
    def update
        respond_to do |format|
            if @order.update(order_params)
                format.html { redirect_to @order, notice: 'Order was successfully updated.' }
                format.json { render :show, status: :ok, location: @order }
                else
                format.html { render :edit }
                format.json { render json: @order.errors, status: :unprocessable_entity }
            end
        end
    end
    
    # DELETE /orders/1
    # DELETE /orders/1.json
    def destroy
        @order.destroy
        respond_to do |format|
            format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
            format.json { head :no_content }
        end
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
        @order = Order.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
        params.require(:order).permit(:customer_name)
    end
end

