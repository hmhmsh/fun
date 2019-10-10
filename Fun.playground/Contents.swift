struct A {
	let a: String
	
	init(a: String = "a") {
		print("A init")
		self.a = a
	}
}

let a = A()
print(a.a)

let b = A(a: "b")
print(b.a)
