require 'resource_controller_extensions'
ResourceController::Actions.class_eval { include ResourceControllerExtensions::Actions }
