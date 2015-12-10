Rails.application.routes.draw do
  scope ":locale", defaults: { locale: I18n.locale }, locale: /en|ru|be/ do
    ActiveAdmin.routes(self)
    devise_for :admin_users, ActiveAdmin::Devise.config
    resources :menus, only: [:show]
    resources :news, only: [:show]
    root 'static_pages#home'
    get "/editor" => redirect("/users/sign_in")
  end

  devise_for :users, :skip => [:registrations, :password], :controllers => { :sessions => "sessions" }
  namespace :editor do
    resources :sliders, except: [:show]
  end

  get "/editor" => redirect("/users/sign_in")
  get "#{I18n.default_locale}/editor" => redirect("#{I18n.default_locale}/users/sign_in")
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), :via => [:get]
  match '', to: redirect("/#{I18n.default_locale}"), :via => [:get]
end
