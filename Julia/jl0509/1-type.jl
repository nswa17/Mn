type Test
  a::Int
  b::Int
  showTest::Function
  function Test()
    self = new()
    self.a = 1
    self.b = 2
    self.showTest = function()
      self.a, self.b
    end

    return self
  end
end

t1 = Test()
println(t1.showTest())
