module Dry
  module Env
    # @api public
    APP_NAME_PATTERN = /_application\z/.freeze

    # @api public
    DEFAULT_TARGET = 'development'.freeze

    # @api public
    DEFAULT_VALUE = Object.new.freeze

    # @api public
    EMPTY_ARRAY = [].freeze

    # @api public
    EMPTY_STRING = ''.freeze

    # @api public
    NAMESPACE_PATTERN = /[_\.]/.freeze
  end
end
