class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :occasion
      t.string :event_date
      t.text :description

      t.timestamps
    end
  end
end
