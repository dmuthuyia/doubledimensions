class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :advertiser
      t.string :title
      t.text :description
      t.text :qualification
      t.string :contract_nature
      t.decimal :salary
      t.datetime :start_date
      t.datetime :application_deadline

      t.timestamps null: false
    end
  end
end
