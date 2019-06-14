feature 'Tell user how many days until their birthday' do
  scenario 'Users does not equal date' do
    Timecop.freeze(2019,01,01) do
      visit('/')
      fill_in :name, with: 'John'
      fill_in :month, with: '04'
      fill_in :day, with: '10'
      click_button 'Go'
      expect(page).to have_content 'Your birthday will be in 99 days, John'
    end
  end
end
