#USER LOGIN

get '/user/login' do
  erb :'/user/login'
end

post '/user/login' do
  if User.authenticate(params[:email], params[:password])
    @user = User.find_by(email: params[:email])
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :'/user/login'
  end
end

#USER CREATE
get '/user/create' do
  @user = User.new
  erb :'/user/create'
end

post '/user/create' do
  @user = User.create!(email: params[:email], password: params[:password])
  redirect '/'
end
