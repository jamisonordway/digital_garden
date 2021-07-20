class CreateLogEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :log_entries do |t|
      t.string :title
      t.text :body
      t.boolean :draft

      t.timestamps
    end
  end
end
