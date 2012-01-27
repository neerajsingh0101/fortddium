class RequestSpec < MiniTest::Spec
  include Capybara::DSL
  include Rails.application.routes.url_helpers
end

MiniTest::Spec.register_spec_type /integration$/i, RequestSpec
