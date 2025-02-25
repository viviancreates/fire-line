class ApplicationController < ActionController::Base
  allow_browser versions: :modern if respond_to?(:allow_browser)

  before_action :set_locale
  before_action :authenticate_user!, unless: :public_page?

  def set_locale
    I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end

  def default_url_options
    { locale: I18n.locale }
  end

  private

  def public_page?
    controller_name == 'home' || controller_name == 'pages'
  end
end
