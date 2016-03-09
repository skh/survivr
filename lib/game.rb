class Game
	attr_reader :tribes

	def initialize(a, b)
		@tribes = [a, b]
	end

	def add_tribe(tribe)
		@tribes << tribe
	end

	def immunity_challenge
		@tribes.sample
	end

	def clear_tribes
		@tribes = []
	end

	def merge(name)
		if not @merged
			new_members = []
			@tribes.each do |tribe|
				new_members.concat(tribe.members)
			end
			@merged = Tribe.new(name: name, members: new_members)
		end
		return @merged
	end

	def individual_immunity_challenge
		merge("combined tribe")
		immune = @merged.members.sample
		@merged.tribal_council(immune: immune)
	end
end