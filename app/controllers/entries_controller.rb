class EntriesController < ApplicationController
  def show
    @entry = Entry.find(params[:id])
  end

  def create
    # binding.pry
    @entry = Entry.new(entry_params)
    @journal = Journal.find(params[:journal_id])
    
    @entry.journal = @journal
    
    
    if @entry.save
      flash[:notice] = "You're entry was saved!"
      redirect_to entry_path(@entry)
      # redirect_to @entry
    else
      @entries = @journal.entries
      
      flash.now[:notice] = @entry.errors.full_messages.to_sentence
      render :'journals/show'
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :body)
  end
end
