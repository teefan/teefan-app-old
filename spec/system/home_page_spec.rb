# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Home page' do
  it 'shows user the home page with JS', js: true do
    visit '/'

    expect(page).to have_content 'Hello World!'
  end
end
