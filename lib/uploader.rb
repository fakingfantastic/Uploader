# require 'railtie' if defined?(Rails)
require 'rails'

module Uploader
  class Railtie < Rails::Railtie
    initializer 'uploader.insert_into_active_record' do
      ActiveSupport.on_load :active_record do
        logger.info "hi"
        
        ActiveRecord::Base.send :include, Integrator
      end
    end
  end
  
  module Integrator
    def self.included(base)
      base.extend ClassMethods
    end
  end
  
  module ClassMethods
    def log_me
      Rails.logger.info "hi"
    end
  end
end