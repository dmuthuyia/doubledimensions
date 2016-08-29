class AddUserIdToCareers < ActiveRecord::Migration
  def change
    add_column :careers, :user_id, :integer
    add_index :careers, :user_id
  end
end
