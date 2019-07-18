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
