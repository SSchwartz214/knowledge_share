class SearchController < ApplicationController

  def new
  end

  def index
    @presenter = SearchPresenter.new(params[:q])
  end
end
