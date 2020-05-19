class StocksController < ApplicationController

  before_action :find_stock, only: [:show, :edit, :update, :destroy]

  def index
    @stocks = Stock.all 
  end

  def show
  end

  def new
    @stock = Stock.new 
  end

  def create
    stock = Stock.create(stocks_params)
    redirect_to stock_path(stock)
  end

  def edit

  end

  def update
    @stock.update(stocks_params)
    redirect_to stock_path(@stock)
  end

  def destroy
    @stock.destroy
    redirect_to stocks_path
  end

  private 

  def stocks_params
    params.require(:stock).permit(:name, :price, :description)
  end 

  def find_stock
    @stock = Stock.find(params[:id])
  end 

end
