{
  double: function(x) x * 2,
  numbers: [1, 2, 3, 4, 5],
  doubledNumbers: std.map(self.double, self.numbers)
}
