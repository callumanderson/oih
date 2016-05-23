require 'rails_helper'

describe 'welcome/index.html.erb' do
  it 'should render the index template' do
      expect(render).to render_template(:index)
  end
end
