Rails.application.routes.draw do
  #-------------------------------------------------いいね！機能

  post 'likes/:post_id/create' => 'likes#create' # いいね！
  post 'likes/:post_id/destroy' => 'likes#destroy' # いいね！取り消し
  #-------------------------------------------------ログイン・ログアウト
  post 'logout' => 'users#logout' # ログアウト
  get 'login' => 'users#login_form' # ログインフォーム
  post 'login' => 'users#login' # ログインフォームからのデータ
  get 'testlogin' => 'users#testlogin_form' # 簡単ログインフォーム
  post 'testlogin' => 'users#testlogin' # 簡単ログイン

  #-------------------------------------------------ユーザ管理
  get 'users/:id/likes' => 'users#likes' # いいね！した投稿をユーザ詳細に表示
  post 'users/:id/update' => 'users#update' # 内容の保存
  get 'users/:id/edit' => 'users#edit' # ユーザ情報の編集
  post 'users/create' => 'users#create' # フォームからのデータを受け取る
  get 'signup' => 'users#new' # ユーザ登録
  get 'users/index' => 'users#index' # ユーザ一覧
  get 'users/:id' => 'users#show' # ユーザ詳細

  # ------------------------------------------------投稿
  get 'posts/index' => 'posts#index' # 投稿一覧ページ
  get 'posts/new' => 'posts#new'     # 新規投稿ページ
  get 'posts/:id' => 'posts#show'    # 投稿詳細ページ
  post 'posts/create' => 'posts#create' # フォームからのデータを受け取る
  get 'posts/:id/edit' => 'posts#edit' # 編集ページ
  post 'posts/:id/update' => 'posts#update' # 内容の更新
  post 'posts/:id/destroy' => 'posts#destroy' # 投稿の削除

  get '/' => 'home#top'              # トップページ
  get 'about' => 'home#about'        # aboutページ
end
