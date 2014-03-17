Bookshare::Application.routes.draw do

  root 'books#index'

  resources :books, param: :isbn do
    member do
      post   'claim'
      delete 'claim' => 'books#unclaim'
    end

    collection do
      get 'search'
    end
  end

  resources :orders do
    collection do
      post 'shipping'      
      get  'payment'
    end
  end

  get '/faq' => 'pages#faq'

end
