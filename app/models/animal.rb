class Animal < ApplicationRecord
	validates_presence_of :name, :species

	belongs_to :person
end
