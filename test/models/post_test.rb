require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "formats author" do
    p = Post.create(author: "john wolf")
    assert_equal "John Wolf", p.author
  end
end
