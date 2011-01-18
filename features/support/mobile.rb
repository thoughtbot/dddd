class MobileMiddleware
  cattr_accessor :user_agent

  def initialize(app)
    @app = app
  end

  def call(env)
    env['HTTP_USER_AGENT'] = MobileMiddleware.user_agent
    @app.call(env)
  end
end

Capybara.app = MobileMiddleware.new(Capybara.app)

Before('@mobile') do
  MobileMiddleware.user_agent = 'iPhone'
end

After('@mobile') do
  MobileMiddleware.user_agent = nil
end
