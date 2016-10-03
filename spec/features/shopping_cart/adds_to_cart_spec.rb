require "rails_helper" 

describe "adding to cart" do
  fixtures :all
  it "can add an appointment to a cart" do 
    login_as(users(:buyer), scope: :user)
    visit therapy_path(therapies(:basic_meditation))
    booking = therapies(:basic_meditation).bookings.first 
    within("#booking_#{booking.id}") do
      select("2", from: "appointment_count")
      click_on("add-to-cart") 
    end
    expect(current_url).to match("cart") 
    within("#therapy_#{therapies(:basic_meditation).id}") do
      within("#booking_#{booking.id}") do
        expect(page).to have_selector(".appointment_count", text: "2") 
        expect(page).to have_selector(".subtotal", text: "$30")
      end
      expect(page).not_to have_selector("#22-06-1600")
      expect(page).not_to have_selector("#therapy_#{therapies(:advanced_meditation).id}") 
    end
  end 
end