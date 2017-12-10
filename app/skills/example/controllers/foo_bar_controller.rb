class Example::FooBarController < ApplicationController

  auto_keep_conversation only: [:bar]

  auto_reply only: [:bar]

  def foo
    # @foo = 'foo_123'
    # @bar = 'bar_987'
    #
    # reply
    # sleep(1)
    #
    # reply(render: :foo,
    #       text: 'Foo text with render')
    # sleep(1)
    # reply(render: :bar)
    # sleep(1)
    reply(text: 'Well well well...')

    keep_conversation(action: :i_take_it_all, store: {var: 'boo'})
  end

  def bar
    @bar = 'this is a bar variable'
  end

  def weather
    reply(text: "Its really shitty in #{intent.matches['location']}")
  end

  def hello
    greeting = intent.matches['greet']

    reply(text: "Hi there, you said '#{greeting}'")
    keep_conversation(action: :i_should_end)
  end

  def i_take_it_all
    if request.text == 'bye'
      end_conversation
      reply(text: 'Bye')
      return
    end

    reply(text: "Cite: '#{request.text}'")
    keep_conversation(action: :i_take_it_all)
  end

  def i_should_end
    reply(text: "Cite: '#{request.text}'")
  end

end
