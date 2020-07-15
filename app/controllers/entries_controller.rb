class EntriesController < ApplicationController

  def index 
    @entries = Entry.all
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
      flash[:notice] = "YAY PUBERTY"
      redirect_to @journal
    else  
      flash[:notice] = @entry.errors.full_messages.to_sentence
      render :new
    end

  end

  def show 
    @entry = Entry.find(params[:id])
    @journal = @entry.journal
  end

  private 

  def entry_params 
    params.require(:entry).permit(:title, :body)
  end



end
