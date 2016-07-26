class CreatePhonenumbersAndContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :info
      t.timestamps
    end
    create_table :phones do |t|
      t.string :label
      t.string :number
      t.references :contact
      t.timestamps
    end
  end
end
