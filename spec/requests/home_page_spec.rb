# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Home page', type: :request do
  it 'shows user the home page' do
    get '/'
    expect(response).to render_template(:index)

    expect(response.body).to include('Hello World!')
  end
end
