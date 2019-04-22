require 'gossip'

class ApplicationController < Sinatra::Base
	
	get "/" do
		erb :index, locals: {gossips: Gossip.all}
	end

	get "/gossips/new/" do
		erb :new_gossip
	end

	post "/gossips/new/" do 
		Gossip.new("#{params["gossip_author"]}","#{params["gossip_content"]}").save
		redirect '/'
	end

	get "/gossips/:id" do
		#erb :index_temp, locals: {one_gossips: Gossip.find}
		"<html><head><title>PAGE POTIN</title></head><body><h1>PAGE POTIN</h1><h2>Voici la page du potin n°#{params["id"]} !</h2><p>Son auteur : #{params["gossip_content"]}</p><p>Le contenu du potin : #{params["gossip_author"]}</p><p</body></html>"
		 
	end

end