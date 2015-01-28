class CreateContactUs < ActiveRecord::Migration
  def change
    create_table :contact_us do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :occasion
      t.text :description

      t.timestamps
    end
  end
end
