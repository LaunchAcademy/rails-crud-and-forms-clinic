class EntriesController < ApplicationController

  # def index
  #   @journal = Journal.find(params[:journal_id])
  #   @entries = @journal.entries
  # end
  # dont need this because we already see all of the entires on the show page

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
    @journal = @entry.journal
  end

  def new
    @journal = Journal.find(params[:journal_id])
    @entry = Entry.new
  end

  def create
    @journal = Journal.find(params[:journal_id])

    @entry = Entry.new(entry_params)
    @entry.journal = @journal

    if @entry.save
      flash[:banana] = "You saved an entry!"
      redirect_to "/journals/#{params[:journal_id]}"
    else
      flash.now[:shmuganamugana] = @entry.errors.full_messages.join(", ")
      render :new
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :body)
  end

end
