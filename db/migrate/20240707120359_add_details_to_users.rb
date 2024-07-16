class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :title, :string
    add_column :users, :startDate, :datetime
    add_column :users, :endDate, :datetime
    add_column :users, :allDay, :boolean
    add_column :users, :scheduleMemo, :text
  end
end
