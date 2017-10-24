# main controller that sits between app and the Rails stack
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
