Tickets::Engine.routes.draw do
  get 'tickets' => 'tickets#index'
end

Discourse::Application.routes.append do
  =begin get '/admin/tickets' => 'admin/plugins#index', constraints: StaffConstraint.new
  mount Tickets::Engine, at: '/', constraints: StaffConstraint.new =end
  
  get '/admin/tickets' => 'admin/plugins#index'
  mount Tickets::Engine, at: '/'
end
