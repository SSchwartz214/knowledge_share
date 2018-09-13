require 'rails_helper'

describe GoogleBook do
  let(:data) {
    {
      title: "1984",
      authors: "George Orwell",
      sm_image: "http://books.google.com/books/content?id=kotPYEqx7kMC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
      bg_image: "http://books.google.com/books/content?id=kotPYEqx7kMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
      description: "George Orwell’s 1984 takes on new life with extraordinary relevance and renewed popularity. “Orwell saw, to his credit, that the act of falsifying reality is only secondarily a way of changing perceptions. It is, above all, a way of asserting power.”—The New Yorker In 1984, London is a grim city in the totalitarian state of Oceania where Big Brother is always watching you and the Thought Police can practically read your mind. Winston Smith is a man in grave danger for the simple reason that his memory still functions. Drawn into a forbidden love affair, Winston finds the courage to join a secret revolutionary organization called The Brotherhood, dedicated to the destruction of the Party. Together with his beloved Julia, he hazards his life in a deadly match against the powers that be. Lionel Trilling said of Orwell’s masterpiece, “1984 is a profound, terrifying, and wholly fascinating book. It is a fantasy of the political future, and like any such fantasy, serves its author as a magnifying device for an examination of the present.” Though the year 1984 now exists in the past, Orwell’s novel remains an urgent call for the individual willing to speak truth to power.",
      page_count: "648"
    }
  }

  subject { GoogleBook.new(data) }

  xit 'exists' do
    expect(subject).to be_a GoogleBook
  end

  context "instance methods" do
    context '#title' do
      xit 'returns a title' do
        expect(subject.title).to eq "1984"
      end
    end
    context '#parse_authors' do
      xit 'returns authors in a string' do
        expect(subject.parse_authors(["Joe Pat, Mike Bill"].to eq("Joe Pat, Mike Bill")))
      end
    end
  end
end
