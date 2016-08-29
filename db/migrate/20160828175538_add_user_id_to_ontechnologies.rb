class AddUserIdToOntechnologies < ActiveRecord::Migration
  def change
    add_column :ontechnologies, :user_id, :integer
    add_index :ontechnologies, :user_id
  end
end
