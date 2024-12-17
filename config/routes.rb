RedmineApp::Application.routes.draw do
  resources :projects do
    resources :tracker_ubication, only: [:index]
  end
end
