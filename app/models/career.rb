class Career < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :career_img, :styles => { :medium => "500x300#", :small => "350x250>" }, :default_url => "missing.jpg"
	validates_attachment_content_type :career_img, :content_type => /\Aimage\/.*\Z/
end
