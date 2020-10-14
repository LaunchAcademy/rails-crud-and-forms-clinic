class JournalsController < ApplicationController

  def index
    @journals = Journal.all
  end

  def show
    @journal = Journal.find(params[:id])
    @entries = @journal.entries

    @entry = Entry.new
  end

  def new
    @journal = Journal.new
  end

  def create
    # binding.pry
    @journal = Journal.new(journal_params)

    if @journal.save
      # redirect_to "/journals/#{@journal.id}"
      # redirect_to journal_path(@journal)
      redirect_to @journal
    else
      flash.now[:notice] = @journal.errors.full_messages.to_sentence
      # render new_journal_path
      render :new
    end

  end

  private

  def journal_params
    params.require(:journal).permit(:name, :year, :author, :description, :theme)
  end

end
