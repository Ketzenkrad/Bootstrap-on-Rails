Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Роут для контроллера
  #указание имени контроллера и метода его реализации;
  #Main page
  root 'posts#index'
  # Роут для страницы обо мне;
  # get обработка иных страниц;
  get 'about' => 'pages#about'
  # Динамическое отслеживание;
  # Контроллер постов;
  resources :posts
end
