Ncct::Application.routes.draw do

	get "payment/add"

	get "payment/create"

	get "payment/edit"

	get "payment/update"

	get "payment/delete"

	get "member/index"

	# login
	root :to => 'home#login'
	
	# Home page once logged in
	get 'home' => 'home#home', :as => 'home'

	# Index page of NCCT member list
	get 'member/index' => 'member#index', :as => 'member'
	
	# add a new member
	get 'member/add' => 'member#add', :as => 'member_add'
	post 'member/create' => 'member#create', :as => 'member_create'
	
	# edit an existing member
	get 'member/edit/:id' => 'member#edit', :as => 'member_edit'
	put 'member/update/:id' => 'member#update', :as => 'member_update'
	
	# Index page of payments list
	get 'member/:id/payments' => 'payment#index', :as => 'payments'
	
	# add a new payment
	get 'member/:id/payment/add' => 'payment#add', :as => 'payment_add'
	post 'member/:id/payment/create' => 'payment#create', :as => 'payment_create'
	
	# edit a payment
	get 'member/:id/payment/edit' => 'payment#edit', :as => 'payment_edit'
	put 'member/:id/payment/:pay_id/update' => 'payment#update', :as => 'payment_update'
	
	
end
