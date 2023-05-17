class HomeController < ApplicationController
  def index
    if params[:ticker]
      @stock = AlphaVantageClient.get_stock_quote(params[:ticker])
    end
  end

  def about 
  end
end

