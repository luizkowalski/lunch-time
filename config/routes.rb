Rails.application.routes.draw do
  root 'welcome#index'

  resources :votes, :places

  get 'post_to_slack', to: 'votes#post_to_slack'
  get 'welcome/ask_name'
  post 'welcome/write_name'
end
