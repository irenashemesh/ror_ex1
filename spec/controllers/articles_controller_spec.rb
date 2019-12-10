require 'spec_helper'
require 'rails_helper'

describe ArticlesController do
  it "renders the index template" do
    get :index
    expect(response).to render_template("index")
  end
end