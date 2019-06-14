feature 'Wish user happy birthday' do
  scenario 'User birthday is equal to date' do
    Timecop.freeze(2019,01,01) do
      visit('/')
      fill_in :name, with: 'John'
      fill_in :month, with: '1'
      fill_in :day, with: '1'
      click_button 'Go'
      expect(page).to have_content 'Happy Birthday John!'
    end
  end
end
