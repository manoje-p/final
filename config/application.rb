  class Application < Rails::Application
    config.action_controller.permit_all_parameters = true
  end
end