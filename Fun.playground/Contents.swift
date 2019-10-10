
protocol AProtocol {
	static func a()
}

struct A: AProtocol {
	static func a() {
		print("A func a")
	}
}

struct B<T: AProtocol> {
	
	func b() {
		T.a()
	}
}

let b = B<A>()
b.b()

struct AStub: AProtocol {
	static func a() {
		print("AStub func a")
	}
}

let bStub = B<AStub>()
bStub.b()
