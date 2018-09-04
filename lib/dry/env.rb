require 'dry/env/resolver'
require 'forwardable'

module Dry
  module Env
    class << self
      extend Forwardable

      attr_accessor :instance

      def_delegators :instance, :required, :optional, :with
    end
  end
end

require 'dry/env/railtie' if defined?(Rails)
