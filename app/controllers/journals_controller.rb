class JournalsController < ApplicationController

  def index
    @journals = Journal.all
    # render :index
  end

  def show
    @journal = Journal.find(params[:id])
    @entries = @journal.entries
  end

  def new
    @new_journal = Journal.new
  end

  def create
    @new_journal=  Journal.new(journal_params)
    if @new_journal.save
      flash[:notice] = "Omg new journal, so many juicy secrets."
      # redirect "/journals/#{@new_journal.id}"
      redirect_to @new_journal
    else 
      flash[:notice] = @new_journal.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  def journal_params 
    params.require(:journal).permit(:name, :year, :author, :description, :theme)
  end

end
