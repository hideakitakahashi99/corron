Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'inquiry/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :blogs
  resources :services
  resources :admin
  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面
end
