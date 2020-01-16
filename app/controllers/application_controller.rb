class ApplicationController < ActionController::Base
   protect_from_forgery with: :null_session # uncommenting this is not protecting you from cross-site scripting is 
end
