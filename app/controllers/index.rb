get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @show = Url.all
  erb :index
end

post '/urls' do
  # crea una nueva Url
  user_input = params[:user_input]
  urls = Url.short_url
  p new_url = Url.create(long_url: user_input, short_url: urls)
  redirect to ("/")
end

# e.g., /q6bda
get '/:short_url' do
  # redirige a la URL original
  p url_id = params[:short_url]
  find = Url.find_by(id: url_id)
  p find
  find.click_count += 1
  find.save
  redirect to ("#{find.long_url}")
end
