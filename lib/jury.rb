class Jury
	attr_accessor :members

	def initialize
		@members = []
	end
	def add_member(member)
		@members << member
	end
	def cast_votes(finalists)
		votes = {}
		members.each do |member|
			puts finalists[0]
		end
		finalists.each do |finalist|
			votes[finalist] = 0
		end
		return votes
	end
end