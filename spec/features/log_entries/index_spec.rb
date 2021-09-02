require 'rails_helper'

RSpec.describe 'log entries index' do
  it 'displays all log entries' do
    log_entry = LogEntry.create(title: 'Test Entry', body: 'The contents of the entry', draft: false)

    visit log_entries_path

    expect(page).to have_content(log_entry.title)
    expect(page).to have_content(log_entry.body)
  end
end
