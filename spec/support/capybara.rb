# frozen_string_literal: true

Capybara.server = :puma

Capybara.register_driver :selenium_chrome_container do |app|
  Capybara::Selenium::Driver.new app,
                                 browser: :remote,
                                 url: 'http://selenium_chrome:4444/wd/hub',
                                 desired_capabilities: :chrome
end

# Support drivers: :selenium, :selenium_headless :selenium_chrome, :selenium_chrome_headless
Capybara.default_driver = :selenium_chrome_container
