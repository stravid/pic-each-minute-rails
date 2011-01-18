PicEachMinute::Application.routes.draw do
  resources :minutes do
    member do
      get 'random'
    end
  end

  resources :pictures

  root :to => 'high_voltage/pages#show', :id => 'clock'
end
