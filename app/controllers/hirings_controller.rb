class HiringsController < ApplicationController
  def index
    if params[:search]
      # byebug
    # @search = Hiring.all
    # @search = @search.select do |search|
    #   search.job_title.include?(params[:search])
    # end

   @search = Hiring.search(params[:search]).order("created_at DESC")
  else
   @search = Hiring.all.order('created_at DESC')
 end

    # @hirings = Hiring.all
    # byebug
  end

  def show
      @hiring = Hiring.find(params[:id])
      byebug
  end
end
