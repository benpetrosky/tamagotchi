require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagatchi')

get('/') do
  @name = Tamagatchi.all()
  erb(:index)
end
get('/') do
   @food_level = Tamagatchi.food_level()
  erb(:index)
end
get('/') do
 @sleep_level = Tamagatchi.sleep_level()
  erb(:index)
end
get('/') do
   @activity_level = Tamagatchi.activity_level()
  erb(:index)
end

post('/tamagatchi_form') do
  name = params.fetch('names')
  tam = Tamagatchi.new(name)
  tam.save()
  erb(:tamagatchi)
end
post('/user_choice') do
  eat = params.fetch('eat')
  update = Tamagatchi.food_level(eat)
  update.save()
  erb(:tamagatchi)
end
