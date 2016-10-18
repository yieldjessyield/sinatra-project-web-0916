class CustomerController < ApplicationController

  get '/customers' do
    @customers = Customer.all
    erb :'/customers/index'
  end

  get '/customers/new' do
    erb :'/customers/new'
  end

  get '/customers/:id' do
    @customers = Customer.find(params[:id])
    erb :'customers/show'
  end

  post '/customers' do
    binding.pry
    @customer = Customer.find_or_create_by(params[:name])
    @customer.save

    redirect to "/customers/#{@customer.id}"
  end

end
