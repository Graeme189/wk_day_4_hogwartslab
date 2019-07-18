require( 'sinatra' )
require( 'sinatra/reloader' )
require( 'pry-byebug' )

require_relative( './models/student.rb' )
also_reload('./models/*')

# INDEX
get '/hogwarts' do
  @students = HogwartsStudent.all()
  erb(:index)
end

# NEW
get '/hogwarts/new' do
  erb(:new)
end

# SHOW
get '/hogwarts/:id' do
  @student = HogwartsStudent.find(params[:id])
  erb(:show)
end

# CREATE
post '/hogwarts' do
  @student = HogwartsStudent.new(params)
  @student.save()
  erb(:create)
end
