Rails.application.routes.draw do
  scope "(:locale)", locale: /en|de|pirate/ do
    resources :bibliography_items

  end
  get '/:locale' => 'bibliography_items#index'
end
