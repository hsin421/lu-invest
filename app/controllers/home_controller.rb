class HomeController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
  	@investors = Investor.order(sort_column + " " + sort_direction)
  end

  private
  
  def sort_column
    Investor.column_names.include?(params[:sort]) ? params[:sort] : "year_date"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
