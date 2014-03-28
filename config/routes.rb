WebtopayApp::Application.routes.draw do
  root :to => 'orders#home'
  post '/order_products' => "orders#use_webtopay", as: 'order_products'
  get '/confirm_order'=>'orders#confirm_order', as: 'confirm_order'
end
