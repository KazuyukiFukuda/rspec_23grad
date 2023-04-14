require 'rails_helper'

RSpec.describe "Books", type: :system, js: true do
  scenario 'title, author, published_at を入力して登録できる' do
    visit '/books/new'

    fill_in 'book_title', with: 'rails guide'
    fill_in 'book_author', with: 'saito'
    fill_in 'book_published_at', with: Date.today.strftime("%Y-%m-%d")

    click_button 'Create Book'

    expect(page).to have_text 'Book was successfully created.'
  end

  scenario 'titleを入力しないで保存をするとエラーが表示される' do
    visit '/books/new'

    fill_in 'book_author', with: 'saito'
    fill_in 'book_published_at', with: Date.today.strftime("%Y-%m-%d")

    click_button 'Create Book'

    expect(page).to have_text "Title can't be blank"
  end
end
