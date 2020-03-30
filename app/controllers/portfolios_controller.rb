class PortfoliosController < ApplicationController
  layout "portfolio"
    def index
        @portfolio_items = Portfolio.by_position
    end

    def angular
      @portfolio_item_angular=Portfolio.angular
    end

   def new
        @portfolio_item =Portfolio.new
        3.times { @portfolio_item.technologies.build }
   end

   def edit 
    @portfolio_item=Portfolio.find(params[:id])
   end

   def show
    @portfolio_item=Portfolio.find(params[:id])
  end
  
  def create
    @portfolio_item = Portfolio.new( params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name]))

    respond_to do |format| 
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @portfolio_item=Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

 

  def destroy
    @portfolio_item=Portfolio.find(params[:id]) 
    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'portfolio was successfully destroyed.' }
    end 
  end



  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end

end