require 'spec_helper'
require 'rails_helper'

describe ArticlesHelper do
  context ".tag_list" do
    it "should return a comma separated list of tag names" do
      article = Fabricate(:article)
      tags = [Fabricate(:tag), Fabricate(:tag)]
      article.tag_list = "  #{tags[0].name},     #{tags[1].name} "
      expect(article.tag_list).to eq("#{tags[0].name.strip.downcase}, #{tags[1].name.strip.downcase}")
    end
  end
end