class Rolodex
	attr_reader :contacts 
	@@ids = 001
	def initialize
		@contacts = []
		# @ids = 001
	end

	def add_contact(contact)
		contact.id = @@ids
		@contacts << contact
		@@ids += 1
	end
end
