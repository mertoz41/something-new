class InvestorsController < ApplicationController
 
 before_action :find_investor, only: [:show, :edit, :update, :destroy]

  def index
    @investors = Investor.all
  end

  def show 
    
  end

  def new
    @investor = Investor.new
  end

  def create
    investor = Investor.create(investor_params)
    redirect_to investor_path(investor)
  end

  def edit
  end

  def update
    @investor.update(investor_params)
    redirect_to investor_path(@investor)
  end

  def destroy
    @investor.destroy
    redirect_to investors_path
  end

  private 

  def investor_params
    params.require(:investor).permit(:name, :company,
    portfolio_attributes: [:stock_id])
  end

  def find_investor 
    @investor = Investor.find(params[:id])
  end


end
