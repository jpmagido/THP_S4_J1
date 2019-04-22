require 'pry'

class Gossip
attr_accessor :author, :gossip

	def initialize(update_author, update_gossip)
		@author = update_author
		@gossip = update_gossip
	end

# Methode pour sauvegarder les inputs
	def save
  CSV.open("./db/gossip.csv", "ab") do |csv|
    csv << ["#{@author}", "#{@gossip}"]
		end
  	end

# Methode pour afficher tous les Gossip
  	def self.all
  		all_gossips = []
  		CSV.read("./db/gossip.csv").each do |csv_line|
  			all_gossips << Gossip.new(csv_line[0], csv_line[1])
  		end
  		return all_gossips
  	end

# Methode pour afficher un seul gossip (a terminer)
  	def self.find
  		array_1 = []
  		CSV.read("./db/gossip.csv").each do |line|
  			array_1 << Gossip.new(line[0], line[1])
  		end
  		return array_1
  	end
  	

end


