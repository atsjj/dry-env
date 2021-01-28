# frozen_string_literal: true

module Dry
  module Env
    # @api public
    APP_NAME_PATTERN = /_application\z/.freeze

    # @api public
    DEFAULT_TARGET = 'development'

    # @api public
    DEFAULT_VALUE = Object.new.freeze

    # @api public
    EMPTY_ARRAY = [].freeze

    # @api public
    EMPTY_STRING = ''

    # @api public
    NAMESPACE_PATTERN = /[_\.]/.freeze
  end
end
