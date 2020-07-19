import UIKit

let str = "Nick comments: In the beginning, I always felt I couldn't remake the world but I would like to try. I didn't know how so I tried different ways. I am still doing that. I am not that focused. I go out to paint. I look for something to paint. All these ideas stay in the background, out of sight, until I am through painting. I get ideas from the act of painting and it guides me either into a dogma or chaos. All my paintings start from what is seen. The painting marries in different ways and set up its own laws, which I try to deduce and follow. The awareness did not change the painting. The conclusions of the finished piece changed the process of translating the seen."

func prettifyString(string: String, span: Int) -> String {
    var result = String()
    var count = 0
    
    str.map {
        if $0.isWhitespace {
            if count == span - 1 {
                result.append("\n")
                count = 0
            } else {
                count += 1
                result.append($0)
            }
        }
        else {
            result.append($0)
        }
    }
    return result
}

print(prettifyString(string: str, span: 3))

