require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagatchi')

get('/') do
  @name = Tamagatchi.all()
  erb(:index)
end

post('/tamagatchi_form') do
  name = params.fetch('names')
  tam = Tamagatchi.new(name)
  tam.save()
  erb(:tamagatchi)
end
