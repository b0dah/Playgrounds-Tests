import Cocoa

func fun(i: Int)-> Bool {
    if i == 2 {
        return true
    }
    else {
        return fun(i: i+1)
    }
}

print(fun(i: 0))
