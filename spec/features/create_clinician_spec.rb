require 'spec_helper'

describe 'Creating a new clinician' do
  let!(:clinincian) { FactoryGirl.create(:clinician, email: 'bar@baz.com') }

  it 'saves the clincian and shows the new clinician\'s details' do
    visit new_clinician_path
    fill_in 'Name', with: 'Foo Bar'
    fill_in 'Email', with: 'foo@bar.com'
    fill_in 'Location', with: 'Oxford'
    fill_in 'Specialism', with: 'Dermatology'

    click_button 'Create Clinician'

    puts current_path
    puts clinician_path(Clinician.last)
    expect(current_path).to eq(clinician_path(Clinician.last))

    expect(page).to have_text('Foo Bar')
  end

  it 'should prevent me from adding the same email address twice' do
    visit new_clinician_path
    fill_in 'Name', with: 'Foo Bar'
    fill_in 'Email', with: 'bar@baz.com'
    fill_in 'Location', with: 'Oxford'
    fill_in 'Specialism', with: 'Dermatology'

    click_button 'Create Clinician'
    expect(current_path).to eq(clinicians_path)
    expect(Clinician.find_by(email: 'bar@baz.com')).to be_kind_of(Clinician)
  end
end
