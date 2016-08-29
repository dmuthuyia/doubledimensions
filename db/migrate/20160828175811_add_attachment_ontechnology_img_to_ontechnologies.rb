class AddAttachmentOntechnologyImgToOntechnologies < ActiveRecord::Migration
  def self.up
    change_table :ontechnologies do |t|
      t.attachment :ontechnology_img
    end
  end

  def self.down
    remove_attachment :ontechnologies, :ontechnology_img
  end
end
