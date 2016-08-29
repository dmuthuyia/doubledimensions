class User < ActiveRecord::Base
	has_many :products
	has_many :careers
	has_many :pictures
	has_many :ontechnologies

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
