get '/characters/new' do
  @user = User.find(session[:user_id])
  @character = Character.new
  erb :'/characters/new'
end

post '/characters/new' do
  @user = User.find(session[:user_id])
  @character = Character.create!(name: params[:name], user: @user, race: Race.find_by(name: params[:race]))
  session[:character_id] = @character.id
  redirect '/characters/building'
end

get '/characters/building' do
  @character = Character.find(session[:character_id])
  erb :'/characters/building'
end
