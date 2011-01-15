PicEachMinute::Application.routes.draw do
  resources :minutes do
    member do
      get 'random'
    end
  end

  resources :pictures
end
