require 'rubygems'
require 'defined-by'

require 'cockpit/core/include'
#require 'cockpit/core/scope'
#require 'cockpit/core/store'
#require 'cockpit/core/helpers'
#require 'cockpit/core/global'
#require 'cockpit/stores/active_record'
require 'cockpit/core/settings'

module Cockpit

  autoload :Scope,        'cockpit/core/scope'
  autoload :Settings,     'cockpit/core/settings'
  autoload :Store,        'cockpit/core/store'
  autoload :ViewHelpers,  'cockpit/core/helpers'

  module Rails
    class Railtie < ::Rails::Railtie
      initializer 'cockpit.ar_extensions' do |app|
        ActiveRecord::Base.send(:include, Cockpit) if defined?(ActiveRecord::Base)
      end
    end
  end
end
  
def Settings(*args, &block)
  Cockpit::Settings.define!(*args, &block)
end

def Cockpit(*args, &block)
  Settings(*args, &block)
end
