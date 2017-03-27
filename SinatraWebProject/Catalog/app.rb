require 'sinatra'
require 'member'
require 'member_store'

store = MemberStore.new('catalog.yml')

get('/catalog') do 
	@members = store.all
	erb :index
end

get('/catalog/new') do
	erb :new
end

post('/catalog/create') do
	@member = Member.new
	@member.name = params['name']
	@member.email = params['email']
	@member.phone = params['phone']
	store.save(@member)
	redirect '/catalog/new'
end

get('/catalog/:id') do
	id = params['id'].to_i
	@member = store.find(id)
	erb :show
end