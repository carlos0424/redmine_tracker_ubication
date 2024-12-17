RedmineApp::Application.routes.draw do
  resources :issues do
    resources :tracker_ubications, only: [:index]
  end
end
