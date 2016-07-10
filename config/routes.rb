# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
  match 'workflow/transitions', :controller => 'workflow_transitions_api', :action => 'index', :via => [:get]
  match 'workflow/permissions', :controller => 'workflow_permissions_api', :action => 'index', :via => [:get]
