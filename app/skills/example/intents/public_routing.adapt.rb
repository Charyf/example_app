AdaptIntentProcessor.public_routing_for :Example do |routing|

  routing.register_keywords 'greet', 'Hello', 'Hi'
  routing.register_regex 'in (?P<location>.*)'

  routing.intent('Greet Intent')
      .required('greet')
      .optional('location')
      .route_to('foo_bar', 'foo')

end