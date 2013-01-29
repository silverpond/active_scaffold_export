module ActiveScaffoldExport
  class Engine < ::Rails::Engine
  	initializer("initialize_active_scaffold_export", :after => "initialize_active_scaffold") do
      ActiveSupport.on_load(:action_controller) do
        require "active_scaffold_export/config/core.rb"
      end
    end
  end
end
