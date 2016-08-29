class CreateOntechnologies < ActiveRecord::Migration
  def change
    create_table :ontechnologies do |t|
      t.string :title
      t.text :body
      t.string :url

      t.timestamps null: false
    end
  end
end
