require File.expand_path('../boot', __FILE__)
# TODO REMOVE PYTHON - set in terminal
ENV["PYTHON"] = 'python3'

require 'charyf'
require 'charyf/adapt_processor'

Bundler.require(*Charyf.groups)

module TestApp
  class Application < Charyf::Application

    # I18n
    config.i18n.available_locales = [:en]

    config.i18n.default_locale = :en

    # Processor
    config.intent_processor = :adapt

  end
end