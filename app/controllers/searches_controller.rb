class SearchesController < ApplicationController
def index
  @searches = Search.all
  # byebug
end
def show
  @search = Search.find(params[:id])
end


end
