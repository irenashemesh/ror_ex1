require 'spec_helper'
require 'rails_helper'

describe Article do
  it "is not valid without a title" do
    article = Article.new(title: nil)
    p article
    expect(article).to be_invalid
  end

  it "raises an error when saving with no title" do
    article = Article.new(title: nil)
    expect{ article.save! }.to raise_error
  end
end