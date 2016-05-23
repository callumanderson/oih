require 'rails_helper'

RSpec.describe 'The browse clinicians page', :type => :feature do
  let!(:clinician) { FactoryGirl.create(:clinician) }

  it 'should have a descriptive page introdution' do
    visit 'http://example.com/browse'
    expect(page).to have_content('Private Clinicians in your area')
  end
  it 'should have some clinicians listed' do
    visit 'http://example.com/browse'
    expect(page).to have_content(clinician.name)
  end
end
