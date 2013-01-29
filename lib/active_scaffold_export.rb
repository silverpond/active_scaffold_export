ACTIVE_SCAFFOLD_EXPORT_GEM = true

require 'active_scaffold_export/engine.rb'
require 'active_scaffold_export/version.rb'
#require 'active_scaffold_export/config/core.rb'

# Load our overrides
#require "active_scaffold_export/config/core.rb"

module ActiveScaffoldExport
  def self.root
    File.dirname(__FILE__) + "/.."
  end
end

module ActiveScaffold
  module Actions
    ActiveScaffold.autoload_subdir('actions', self, File.dirname(__FILE__))
  end

  module Config
    ActiveScaffold.autoload_subdir('config', self, File.dirname(__FILE__))
  end

  module Helpers
    ActiveScaffold.autoload_subdir('helpers', self, File.dirname(__FILE__))
  end
end

ActionView::Base.send(:include, ActiveScaffold::Helpers::ExportHelpers)