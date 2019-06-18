class HiringsController < ApplicationController
  def index
    @hirings = Hiring.all
  end
end
