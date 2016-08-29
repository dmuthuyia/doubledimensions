Rails.application.routes.draw do
  devise_for :users

#resources :dds
#resources :dds do
#post :about_us
#get :about_us, only: :index
#end

  #get "/about_us", to: "dds#about_us", as: :about_us

  DdsController.action_methods.each do |action|
    get "/#{action}", to: "dds##{action}", as: "#{action}"
  end

root 'dds#home'

resources :ontechnologies
resources :careers
resources :pictures
resources :products


match '/contactforms',     to: 'contactforms#new',             via: 'get'
resources "contactforms", only: [:new, :create]
end
