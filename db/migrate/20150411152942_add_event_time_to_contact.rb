class AddEventTimeToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :event_time, :string
  end
end
