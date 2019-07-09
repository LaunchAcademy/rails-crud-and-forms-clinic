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
    # render :new
  end

  def create
    @journal = Journal.new(journal_params)

    if @journal.save
      flash[:success] = "You did it! You made a journal!"
      redirect_to @journal

      # redirect_to "/journals/#{journal.id}"
    else
      flash.now[:error] = @journal.errors.full_messages.join(", ")
      render :new
    end
  end

  private

  def journal_params
    params.require(:journal).permit(:name, :year, :author, :description, :theme)
  end

end
