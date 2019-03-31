require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/create_puppy' do
    cp = Puppy.new
    @name = cp.puppies(params[:name])
    @breed = cp.puppies(params[:breed])
    @age = cp.puppies(params[:age])
    
    
    erb :create_puppy
  end
  
  post '/display_puppy' do
    
    
    erb :display_puppy
  end

end
