class JournalsController < ApplicationController

  def index
    @journals = Journal.all
  end

  def show
    @journal = Journal.find(params[:id])
  end

  def new
    #
  end

  def create
    # 
  end

  private

end
