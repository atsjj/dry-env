# frozen_string_literal: true

require 'dry/env/constants'
require 'dry/env/resolver'

module Dry
  module Env
    class Railtie < ::Rails::Railtie
      config.dry_env = Resolver.config

      initializer 'dry.env.initialize', before: :load_environment_hook do
        load_initializer

        Dry::Env::Resolver.config.target = ::Rails.env
        Dry::Env::Resolver.config.namespace = ::Rails.app_class
          .name
          .constantize
          .railtie_name
          .sub(APP_NAME_PATTERN, EMPTY_STRING)

        Dry::Env.instance = Dry::Env::Resolver.new
      end

      def load_initializer
        load "#{root}/config/initializers/dry-env.rb"
      rescue LoadError
        # do nothing
      end

      def root
        ::Rails.root
      end
    end
  end
end
