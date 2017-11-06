AdaptIntentProcessor.public_routing_for :Example do |routing|

  routing.register_keywords 'greet', 'Hello', 'Hi'
  # TODO replace for ruby regexps
  # routing.register_regex 'in (?P<location>.*)'


  # .optional('location')
  routing.intent('GreetIntent')
      .required('greet')
      .route_to('foo_bar', 'hello')

end