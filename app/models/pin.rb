class Pin < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	belongs_to :category

	has_attached_file :image, styles: { medium: "900x900>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
