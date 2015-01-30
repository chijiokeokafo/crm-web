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

		found_contact = nil
		@contacts.each do |contact|
			if contact_id == contact.id
				found_contact = contact
			end
		end
		return found_contact
	end
end
