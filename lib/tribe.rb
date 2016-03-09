class Tribe
	attr_reader :name, :members

	def initialize(options={})
		@name = options[:name]
		@members = options[:members]
		@color = options[:color] ? options[:color] : :white
		puts "Tribe #{@name} created.".send(@color)
	end
	def to_s
		@name
	end
	def tribal_council(options={})
		not_immune = @members.select {|member| member != options[:immune]}
		eliminated = not_immune.sample
		@members.delete(eliminated)
		return eliminated
	end

end