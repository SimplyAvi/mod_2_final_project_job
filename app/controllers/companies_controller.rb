class CompaniesController < ApplicationController

  def index
    byebug
    # if params search then
    # @companies = not all but just ones that match params[:search]
    #else
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])

  end



end
