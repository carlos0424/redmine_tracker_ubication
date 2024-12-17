require 'redmine'

Redmine::Plugin.register :redmine_tracker_ubication do
  name 'Redmine Tracker Ubication'
  author 'Carlos Arbelaez'
  description 'Plugin para capturar coordenadas en flujos de trabajo'
  version '0.1.0'
  project_module :tracker_ubication do
    permission :view_tracker_ubication, { tracker_ubication: [:index, :show] }
    permission :manage_tracker_ubication, { tracker_ubication: [:create, :update] }
  end
end
