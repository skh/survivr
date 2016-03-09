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
		new_members = []
		@tribes.each do |tribe|
			new_members.concat(tribe.members)
		end
		if not @merged
			@merged = Tribe.new(name: name, members: new_members)
		end
		return @merged
	end

	def individual_immunity_challenge
		merge("combined tribe")
		@merged.members.sample
	end
end