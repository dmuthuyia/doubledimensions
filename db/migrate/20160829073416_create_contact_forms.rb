class CreateContactForms < ActiveRecord::Migration
  def change
    create_table :contact_forms do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :message
      t.string :nickname
      t.attachment :file

      t.timestamps null: false
    end
  end
end
