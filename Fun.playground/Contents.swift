
func a<T: ExpressibleByIntegerLiteral>() -> T {
	let a: Any = 0
	return a as! T
}

//let t = a<Int>()
//print(t)

let t: Int = a()
print(t)
