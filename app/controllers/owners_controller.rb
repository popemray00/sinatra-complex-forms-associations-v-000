class OwnersController < ApplicationController

  get '/owners' do
    @owners = Owner.all
    erb :'/owners/index'
  end

  get '/owners/new' do
    @pets = Pet.all
    erb :'/owners/new'
  end

  post '/owners' do
<<<<<<< HEAD
    @owner = Owner.create(params[:owner])
  if !params["pet"]["name"].empty?
    @owner.pets << Pet.create(name: params["pet"]["name"])
  end
  @owner.save
  redirect to "owners/#{@owner.id}"
=======
    @owners = Owner.create(params[:owner])
    redirect 'owners/#{@owner.id}'
>>>>>>> fbe3ca2bb96ac97e0e32562317e7af08ce7403ea
  end

  get '/owners/:id/edit' do
    @owner = Owner.find(params[:id])
    erb :'/owners/edit'
  end

  get '/owners/:id' do
    @owner = Owner.find(params[:id])
    erb :'/owners/show'
  end

  post '/owners/:id' do
<<<<<<< HEAD
    @owner = Owner.find(params[:id])
 @owner.update(params["owner"])
 if !params["pet"]["name"].empty?
   @owner.pets << Pet.create(name: params["pet"]["name"])
 end
 @owner.save
 redirect to "owners/#{@owner.id}"
=======

>>>>>>> fbe3ca2bb96ac97e0e32562317e7af08ce7403ea
  end
end
