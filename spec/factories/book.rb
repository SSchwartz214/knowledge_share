FactoryBot.define do
  factory :book do
    title { "1984" }
    authors { "George Orwell" }
    sm_image { "www.simage.com" }
    bg_image { "www.bimage.com" }
    description { "This book's description" }
    page_count { "200" }
  end
end
