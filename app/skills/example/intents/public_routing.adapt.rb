Example.public_routing_for :adapt do |routing|

  routing.register_keywords 'greet', 'Hello', 'Hi'
  routing.register_keywords 'weather', 'weather'
  routing.register_keywords 'foo', 'foo'
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

  routing.intent('Foo')
      .required('foo')
      .route_to('foo_bar', 'foo')

end