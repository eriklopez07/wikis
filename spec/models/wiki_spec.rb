require 'rails_helper'

RSpec.describe Wiki, type: :model do
  let(:wiki) { Wiki.create!(title: "New Wiki", body: "New Wiki Body", private: 1)}

    describe "attributes" do
      it "should respond to title" do
        expect(wiki).to respond_to(:title)
      end

      it "should respond to body" do
        expect(wiki).to respond_to(:body)
      end

      it "should respond to private" do
        expect(wiki).to respond_to(:private)
      end
    end


end
