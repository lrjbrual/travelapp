module Admin
  class BaseController < ApplicationController
    # protect_from_forgery with: :exception
    # before_action :verify_logged_in
    layout 'admin/application'
    # include SessionsHelper
  end
end