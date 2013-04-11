class Player
	attr_accessor :name
	#Initializes the name instance variable.
	def initialize(name = nil)
		@name = name;
  	end
end

# player = Player.new
# player.name = "Jeff"
# puts player.name