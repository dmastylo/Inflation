class Numeric
  attr_accessor :from_year_cpi, :to_year_cpi

  def years
    CPI.keys
  end

  def year?
    CPI.keys.include?(self.to_s)
  end

  def from(year=1800)
    @from_year_cpi = CPI[year.to_s]
    self
  end

  def from_now
    @from_year_cpi = CPI[Time.now.year.to_s]
    self
  end

  def to(year=2012)
    @to_year_cpi = CPI[year.to_s]
    calculate_inflation
  end

  def to_now
    @to_year_cpi = CPI[Time.now.year.to_s]
    calculate_inflation
  end

  def method_missing(method, *args, &block)
    if method =~ /^from_(\d*)$/
      self.send(:from, /^from_(\d*)$/.match(method)[1].to_i)
    elsif method =~ /^to_(\d*)$/
      self.send(:to, /^to_(\d*)$/.match(method)[1].to_i)
    else
      super
    end
  end

  private
  def calculate_inflation
    (self * (@to_year_cpi / @from_year_cpi)).round(2)
  end
end
