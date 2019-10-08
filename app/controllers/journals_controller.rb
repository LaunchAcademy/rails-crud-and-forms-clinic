class JournalsController < ApplicationController
  def index
    @journals = Journal.all
  end

  def new
    @journal = Journal.new
  end

  def create
    @journal = Journal.new(journal_params)

    if @journal.save
      flash[:notice] = "New Journal Created"
      redirect_to journal_path(@journal)
    else
      flash.now[:errors] = @journal.errors.full_messages.to_sentence
      render :new
    end
  end

  def show
    @journal = Journal.find(params[:id])
    @entries = @journal.entries 
  end

  private
  def journal_params
    params.require(:journal).permit(:name, :year, :author, :description, :theme)
  end
end
