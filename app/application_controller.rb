class ApplicationController < Charyf::Controller::Base

  def unknown
    reply(text: "What the hell you mean by that, '#{request.text}'?")
  end

end