class EntriesController < ApplicationController
  def index
    @entries = LogEntry.all
  end

  def show
    @entry = LogEntry.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @entry = LogEntry.find(params[:id])
  end

  def update
    entry = LogEntry.find(params[:id])
    entry.update(params.permit(:title, :body))

    redirect_to entry_path(entry)
  end
end
