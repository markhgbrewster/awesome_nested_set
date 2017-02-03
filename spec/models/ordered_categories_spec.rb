require 'spec_helper'

describe "OrderedCategory", :type => :model do
  before(:all) do
    self.class.fixtures :ordered_categories
  end

  it "returns self_and_ancestors ordered by the left column" do
    child = ordered_categories(:child_2_1)
    self_and_ancestors = [
      ordered_categories(:top_level),
      ordered_categories(:child_2),
      child
    ]
    expect(child.self_and_ancestors).to eq(self_and_ancestors)
  end
end
