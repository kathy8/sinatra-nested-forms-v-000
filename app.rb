require './environment'

module FormsLab
  class App < Sinatra::Base

  
    get '/new' do
     erb :'/pirates/new'
   end
    post '/pirates' do
     @pirates = Pirate.new(params[:pirate])
     params[:pirate][:ships].each do |details|
       Ship.new(details)
     end
     @ships = Ship.all
      erb :'pirates/show'
   end
   end
   
