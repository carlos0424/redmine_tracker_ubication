require 'redmine'

Redmine::Plugin.register :redmine_tracker_ubication do
  name 'Redmine Tracker Ubication'
  author 'Carlos Arbelaez'
  description 'Plugin para capturar coordenadas en flujos de trabajo de issues'
  version '0.1.0'

  project_module :tracker_ubication do
    permission :view_tracker_ubication, { tracker_ubication: [:index] }
  end

  menu :project_menu, :tracker_ubication, 
       { controller: 'tracker_ubication', action: 'index' }, 
       caption: 'Issue Ubications', param: :project_id
end
