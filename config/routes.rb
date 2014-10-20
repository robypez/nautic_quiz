Rails.application.routes.draw do
  root to: "home#index"
  resources :section, only: [:show]
  resources :quiz do
    post "/create_quiz" => "quiz#create_quiz", :as => :create_quiz
  end
end
