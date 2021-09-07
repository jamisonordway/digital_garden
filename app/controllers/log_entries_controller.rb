class LogEntriesController < ApplicationController
  def index
    @entries = LogEntry.all
  end

  def show
    @entry = LogEntry.find(params[:id])
  end

  def new
    @entry = LogEntry.new
  end

  def create
    LogEntry.create(entry_params)
    redirect_to log_entries_path
  end

  def edit
    @entry = LogEntry.find(params[:id])
  end

  def update
    entry = LogEntry.find(params[:id])
    entry.update(params.permit(:title, :body))

    redirect_to log_entry_path(entry)
  end

  private

  def entry_params
    params.require(:log_entry).permit(:title, :body)
  end
end
