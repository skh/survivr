class Jury
	attr_accessor :members

	def initialize
		@members = []
	end
	def add_member(member)
		@members << member
	end
	def cast_votes(finalists)
		votes = {
			finalists[0] => 0,
			finalists[1] => 0
		}
		members.each do |member|
			vote = finalists.sample
			puts vote
			votes[vote] += 1
		end
		return votes
	end
	def report_votes(votes)
		votes.each do |finalist, score|
			puts "#{finalist}: #{score}"
		end
	end
	def announce_winner(votes)
		# I am not too proud of this and would be very interested
		# in a more elegant solution
		winner = ""
		winning_score = 0
		votes.each do |finalist, score|
			if score > winning_score
				winning_score = score
				winner = finalist
			end
		end
		puts "the winner is: #{winner}".yellow
		return winner
	end
end