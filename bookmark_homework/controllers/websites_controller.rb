get '/websites' do
  @websites = Website.all
  erb :'websites/index'
end

get'/websites/new' do
  @website = Website.new
  erb :'websites/new'
end

post '/websites' do
  #binding.pry
  @website = Website.new(params[:website])
  @website.save
  redirect to('/websites')
end

post '/websites/:id/delete' do
  Websites.find(params[:id]).destroy
  redirect to('/websites')
end

get '/websites/:id/edit' do
  @website = Website.find(params[:id])
  erb :'websites/edit'
end

post '/websites/:id' do
  @website = Website.find(params[:id])
  @website.update_attributes(params[:website])
  redirect to('/websites')
end