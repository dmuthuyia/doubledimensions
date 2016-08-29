class AddAttachmentCareerImgToCareers < ActiveRecord::Migration
  def self.up
    change_table :careers do |t|
      t.attachment :career_img
    end
  end

  def self.down
    remove_attachment :careers, :career_img
  end
end
