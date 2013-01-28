require 'inflation'

describe "Inflation" do
  context "#years" do
    it "should return an Array of years" do
      years = 2500.years
      years.should be_a Array
      years.length.should be > 10
    end
  end

  context "#year?" do
    it "should return true for a year that can be calculated" do
      year = 1803.year?
      year.should be true
    end

    it "should return false for a year that cannot be calculated" do
      year = 1700.year?
      year.should be false
    end
  end

  context "#from" do
    it "should be chainable" do
      100.from_2010.should be_a Fixnum
      20054.40.from_1970.should be_a Float
    end
  end

  context "#to" do
    it "should calculate the inflation rate of the number" do
      1.from_1850.to_2012.should == 27.50
      100.from_2012.to_2000.should == 75.27
      75.27.from_2000.to_2012.should == 100
    end
  end
end
