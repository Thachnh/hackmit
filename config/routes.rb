TourStarter::Application.routes.draw do

  resources :bookings, :except => [:index, :new]
  resources :venues
  resources :bookings, :except => [:index]
  get 'tags/:tag', :to => 'tours#index', :as => "tag"
  post 'tags/:tag', :to => 'tours#index', :as => "tag"

  resources :scheduled_tours, :except => [:index, :new]


  get "home/index" , :to => 'home#index'
  get "home/about", :to => 'home#about',  :as => 'about'
  get "scheduled_tours/:tour_id/new", :to => 'scheduled_tours#new', :as => "new_scheduled_tour"
  get "bookings/:scheduled_tour_id/new", :to => "bookings#new", :as => "new_booking"
  post "sendsms/:number_to_send_to/", :to => "send_sms#send_text_message", :as => "send_sms"
  get "formsendsms", :to => "send_sms#form_send_message", :as => "form_send_sms"

  resources :tours do
    resources :reviews, :only => [:new, :index, :show, :create]
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get '/my_tours', :to => 'tours#my_tour'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'tours#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
