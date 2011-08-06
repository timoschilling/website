Hcking::Application.routes.draw do
  devise_for :users

  resources :events do
    namespace "schedule" do
      resources :rdates, :exdates
    end
  end
  match 'ical' => "ical#index"

  root :to => 'welcome#index'

  match ':page_name' => 'pages#show'
end
