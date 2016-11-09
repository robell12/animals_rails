class Person < ApplicationRecord
	# Validations
	validates_presence_of :name


	# Callbacks
		# after_create - runs once after the model created
		# before_create - runs once right before model is created
		# after_save - runs each time after a model is saved
		# before_save - runs each time before a model gets saved
		# after_initalize - runs once after a Person.new
		# before_initalize - runs before instance gets created in memory
		# after_validate - runs after all of the validations
		# before_validate - runs before all validations

	#Associacations
		# has_one
		# has_many
		# belongs_to
		# has_many_through
		# has_one_through

	has_many :animals, dependent: :destroy

	# Instance Methods
	def info
		"#{name} is of age: #{age}"
	end

	# Class Methods - scopes

		# Person.all.by_name
	def self.by_name
		order(:name)
	end

		# Person.all.by_age
	def self.by_age
		order(:age)
	end
end
