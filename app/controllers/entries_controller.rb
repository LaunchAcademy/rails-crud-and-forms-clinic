class EntriesController < ApplicationController

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
      redirect_to journal_path(@journal)
    else
      flash.now[:notice] = @entry.errors.full_messages.to_sentence
      render:new
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:title, :body)
  end
end
