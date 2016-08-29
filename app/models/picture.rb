class Picture < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :image, :styles => { :medium => "500x300#", :small => "350x250>" }, :default_url => "missing.jpg"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
