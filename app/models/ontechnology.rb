class Ontechnology < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :ontechnology_img, :styles => { :medium => "500x300#", :small => "350x250>" }, :default_url => "missing.jpg"
	validates_attachment_content_type :ontechnology_img, :content_type => /\Aimage\/.*\Z/
end
