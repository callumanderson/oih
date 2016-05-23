require 'rails_helper'

RSpec.describe 'The Welcome page', type: :feature do
  it 'should tell the visitor a little about the bunsiness' do
    visit 'http://example.com'
    expect(page).to have_content 'Your single access point for affordable private healthcare'
  end
  it 'should have a link for clinicians', type: :feature do
    visit 'http://example.com'
    expect(page).to have_css('.btn-clinician')
  end
  it 'should have a link for patients', type: :feature do
    visit 'http://example.com'
    expect(page).to have_css('.btn-patient')
  end
  it 'should have a link for about', type: :feature do
    visit 'http://example.com'
    expect(page).to have_link('About')
  end
  it 'should have a link to browse', type: :feature do
    visit root_url
    expect(page).to have_link('For Patients', href: '/browse/')
  end
  it 'should have a link to browse', type: :feature do
    visit root_url
    expect(page).to have_link('For Clinicians', href: '/clinicians/')
  end
end
