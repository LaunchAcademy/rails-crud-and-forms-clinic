class JournalsController < ApplicationController

  def index
    @journals = Journal.all
  end

  def show
    @journal = Journal.find(params[:id])
    @entries = @journal.entries
  end

  def new
    @journal = Journal.new
  end

  def create
    @journal = Journal.new(journal_params)

    if @journal.save
      flash[:notice] = "Journal created"
      redirect_to @journal
    else
      flash.now[:error] = @journal.errors.full_messages.to_sentence
      render :new
    end
  end

  private
  def journal_params
    params.require(:journal).permit(:name, :year, :author, :description, :theme)
  end
end
