require "minitest/autorun"
require "./hello.rb"

describe 'hello' do
  it 'should return "Hello world!" by default' do
    hello.must_equal 'Hello World!'
  end
end

describe "Hello method can be given a name" do
  it "should return 'Hello Erik!' if given Erik" do 
    hello("Erik").must_equal "Hello Erik!"
  end
end

describe "Hello method can ask a question by adding '?' after name argument" do
  it "should return 'Hello Victor?' if given 'Victor'" do 
    hello("Victor","?").must_equal "Hello Victor?"
  end
end
