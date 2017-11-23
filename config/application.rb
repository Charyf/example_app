require File.expand_path('../boot', __FILE__)
# TODO REMOVE PYTHON - set in terminal
ENV["PYTHON"] = 'python3'
# Charyf does not use Bundler.require in order to reduce boot time
# Each gem should be loaded individually using 'require'
# To load gem only in specific environment, add the require statement
# to the correct file in the environments folder
require 'charyf'
require 'charyf/adapt_processor'
require 'charyf/base_dispatcher'

module TestApp
  class Application < Charyf::Application

    # I18n
    config.i18n.available_locales = [:en]

    config.i18n.default_locale = :en

    # Processor
    config.enabled_intent_processors = [:adapt]

    # Dispatcher
    config.dispatcher = :default

  end
end