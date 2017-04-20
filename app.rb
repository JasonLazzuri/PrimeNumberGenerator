require('sinatra')
require('sinatra/reloader')
require('./lib/prime')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results')do
  @change = params.fetch('input').to_i.prime()
  erb(:results)
end
