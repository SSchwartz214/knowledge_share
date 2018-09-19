FactoryBot.define do
  factory :book do
    title { "1984" }
    authors { "George Orwell" }
    sm_image { "logo.png" }
    bg_image { "logo.png" }
    description { "This book's description" }
    page_count { "200" }
  end
end
