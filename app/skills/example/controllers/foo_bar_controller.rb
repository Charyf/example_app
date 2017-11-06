class Example::FooBarController < ApplicationController

    def foo
      @foo = 'foo_123'
      @bar = 'bar_987'

      reply
      sleep(1)

      reply(render: :foo,
            text: 'Foo text with render')
      sleep(1)
      reply(render: :bar)
      sleep(1)
      reply(text: 'Well well well...')
    end

    def bar
      @bar = 'this is a bar variable'

      reply
    end

    def hello
      greeting = intent.matches['greet']

      reply(text: "Hi there, you said '#{greeting}'")
    end

end
