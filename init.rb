Redmine::Plugin.register :redmine_workflow_api do
  name 'Redmine Workflow API'
  author 'Alex Stanev'
  description 'API to access workflow transitions and field permissions.' 
  version '0.0.1'
  url 'https://github.com/RealEnder/redmine_workflow_api'
  author_url 'https://www.stanev.org'
  requires_redmine :version_or_higher => '2.4.0'
end
