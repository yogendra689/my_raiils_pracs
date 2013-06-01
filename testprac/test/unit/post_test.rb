require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def test_the_truth
     p=Post.new
     assert !p.save,"Trying to save post without title"
  end

  test "test with error" do 
     #some_undefined_variable
     assert true
  end

  test "title match" do
    p=Post.new
    p.title="hi this is what expects here"
    assert_equal( p.leg.length,p.title.length,"No match bhai kya msg bhejta hai")

    assert_equal("fixture message",posts(:one).title)
  end
  test "delta check" do
  	p=Post.new
  	price=84.0
  	assert_in_delta(100,price,20,"price should be between 120 and 80")
  	assert_kind_of(Post,p,"no Post instance")
  end
  
end
