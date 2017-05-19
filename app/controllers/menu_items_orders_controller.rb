class MenuItemsOrdersController < ApplicationController
  before_action :set_menu_items_order, only: [:show, :edit, :update, :destroy]

  # GET /menu_items_orders
  # GET /menu_items_orders.json
  def index
    @menu_items_orders = MenuItemsOrder.all
  end

  # GET /menu_items_orders/1
  # GET /menu_items_orders/1.json
  def show
  end

  # GET /menu_items_orders/new
  def new
    @menu_items_order = MenuItemsOrder.new
  end

  # GET /menu_items_orders/1/edit
  def edit
  end

  # POST /menu_items_orders
  # POST /menu_items_orders.json
  def create
    @menu_items_order = MenuItemsOrder.new(menu_items_order_params)

    respond_to do |format|
      if @menu_items_order.save
        format.html { redirect_to @menu_items_order, notice: 'Menu items order was successfully created.' }
        format.json { render :show, status: :created, location: @menu_items_order }
      else
        format.html { render :new }
        format.json { render json: @menu_items_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_items_orders/1
  # PATCH/PUT /menu_items_orders/1.json
  def update
    respond_to do |format|
      if @menu_items_order.update(menu_items_order_params)
        format.html { redirect_to @menu_items_order, notice: 'Menu items order was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu_items_order }
      else
        format.html { render :edit }
        format.json { render json: @menu_items_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_items_orders/1
  # DELETE /menu_items_orders/1.json
  def destroy
    @menu_items_order.destroy
    respond_to do |format|
      format.html { redirect_to menu_items_orders_url, notice: 'Menu items order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_items_order
      @menu_items_order = MenuItemsOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_items_order_params
      params.require(:menu_items_order).permit(:menu_item_id, :order_id)
    end
end
