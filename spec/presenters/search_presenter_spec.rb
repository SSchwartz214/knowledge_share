require 'rails_helper'

 describe SearchPresenter do
  subject { SearchPresenter.new("1984") }

   it "exists" do
    expect(subject).to be_a SearchPresenter
  end

   context "instance methods" do
    context "#books" do
      it "returns books with given title" do
        expect(subject.books.first.title).to eq "1984"
        expect(subject.books.first).to be_a GoogleBook
      end
    end
  end
end
