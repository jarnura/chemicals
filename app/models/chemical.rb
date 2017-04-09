class Chemical < ActiveRecord::Base
	belongs_to :category
	belongs_to :manufacture
	belongs_to :state

	def self.search(search)
  where("name LIKE ? OR chemical_name LIKE ?", "%#{search}%", "%#{search}%") 
	end
end
