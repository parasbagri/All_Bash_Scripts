 {
  base: {
    greeting: "Hello"
  },
  derived: self.base + {
    name: "Eve",
    message: self.greeting + ", " + self.name + "!"
  }
}
