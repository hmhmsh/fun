
enum MyError: Error {
	case someError
}

func async(isSuccess: Bool, completion: (Result<Void, Error>) -> Void) {
	if isSuccess {
		completion(.success(()))
	} else {
		completion(.failure(MyError.someError))
	}
}

let completion: (Result<Void, Error>) -> Void = { (result) -> Void in
	switch result {
		case .success():
			print("success")
		case .failure(let error):
			print(error)
	}
}
async(isSuccess: true, completion: completion)
async(isSuccess: false, completion: completion)
