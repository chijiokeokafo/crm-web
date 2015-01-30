require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'

$rolodex = Rolodex.new
@@rolodex = Rolodex.new





get '/' do
  @crm_app_name = "My CRM"		
  erb :index
end

get "/contacts" do
  erb :contacts
end

get '/contacts/new' do  		
  erb :new
end

post '/contacts' do
  new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
  $rolodex.add_contact(new_contact)
  redirect to('/contacts')
end

get '/contacts/:id' do
  @id = params[:id].to_i
  @contact = $rolodex.find_contact(@id)
  if @contact
    erb :show_contact
  else
    raise Sinatra::NotFound
  end
end

get "/contacts/:id/edit" do
  @contact = $rolodex.find_contact(params[:id].to_i)
  if @contact
    erb :edit_contact
  else
    raise Sinatra::NotFound
  end
end
