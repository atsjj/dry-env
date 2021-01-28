# frozen_string_literal: true

require 'active_support/core_ext/module/delegation'
require 'dry/env/resolver'

module Dry
  module Env
    class << self
      attr_accessor :instance

      delegate :required, :optional, :with, to: :@instance, allow_nil: true
    end
  end
end

require 'dry/env/railtie' if defined?(Rails)
