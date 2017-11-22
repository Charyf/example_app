AdaptIntentProcessor.public_routing_for :Example do |routing|


  routing.register_keywords 'greet', 'Hello', 'Hi'
  routing.register_keywords 'weather', 'weather'
  # TODO replace for ruby regexps
  routing.register_regex 'in (?P<location>.*)'


  routing.intent('GreetIntent')
      .required('greet')
      .route_to('foo_bar', 'hello')

  routing.intent('WeatherIntent')
      .optional('greet')
      .required('weather')
      .required('location')
      .route_to('foo_bar', 'weather')

end