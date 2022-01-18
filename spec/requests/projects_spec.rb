# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Projects', type: :request do
  it 'handles a missing project correctly' do
    get '/projects/not-here'

    expect(response).to redirect_to(projects_path)

    message = 'The project you were looking for could not be found.'
    expect(flash[:alert]).to eq message
  end
end
