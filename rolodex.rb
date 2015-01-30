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

	def find_contact(contact_id)
	    @contacts.find {|contact| contact.id == contact_id }
	end
end
