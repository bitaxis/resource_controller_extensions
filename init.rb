if defined? ResourceController::Base
  require 'resource_controller_extensions'
  ResourceController::Base.class_eval { include ResourceControllerExtensions::StandardActions }
end
