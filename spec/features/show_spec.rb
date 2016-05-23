require 'rails_helper'

RSpec.describe 'The Show page', type: :feature do
  let!(:clinician) { FactoryGirl.create(:clinician) }

  it 'should show the clinician on the page' do
    visit "http://example.com/clinicians/#{clinician.id}"
    expect(page).to have_content(clinician.name)
  end
end
