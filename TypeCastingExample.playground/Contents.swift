import UIKit

class MediaItem {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The one and only", artist: "Chesney Hawkes"),
    Song(name: "Never gonna give you up", artist: "Rick Astley"),
]

// MARK: - Type Checking
var movieCount = 0, songCount = 0

for item in library {
    /// *instance is Type*
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")

// MARK:- Downcasting
for item in library {
    if let movie = item as? Movie { // the result of the cast is Optinal Movie (Movie?)
        print("Movie \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song \(song.name), by \(song.artist)")
    }
}

// MARK: - Type Casting for Any and AnyObject

var things = [Any]()

things.append(0)
things.append(0.0)
things.append("Hello")
things.append(3.141592)
things.append((3.0, 5.0))
things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
things.append({ (name: String) -> String in "Hello, \(name)" })

print("\n\n\n")
for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as Int")
    case 0 as Double:
        print("zero as Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a posistive double value of \(someDouble)")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let movie as Movie:
        print("a movie called \(movie.name), dir. \(movie.director)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Michael"))
    default:
        print("smt else")
    }
}
