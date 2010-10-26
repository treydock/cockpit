require 'rubygems'
require 'defined-by'

module Cockpit
  autoload :Scope,        'cockpit/core/scope'
  autoload :Settings,     'cockpit/core/settings'
  autoload :Store,        'cockpit/core/store'
  autoload :ViewHelpers,  'cockpit/core/helpers'
end

require 'cockpit/core/include'

ActiveRecord::Base.send(:include, Cockpit) if defined?(ActiveRecord::Base)

def Settings(*args, &block)
  Cockpit::Settings.define!(*args, &block)
end

def Cockpit(*args, &block)
  Settings(*args, &block)
end
