import UIKit

/* У нас есть библиотека с книгами.
У книги есть название, стоимость и кол-во их в библиотеке.
Нужно написать функцию "Взять книгу из библиотеке", при этом прописать возможные ошибки в том случае, если мы не сможем взять эту книгу.
*/

enum LibraryErrors: Error {
    case notEnoughtMoney
    case notInStock
}

struct Book {
    var price: Int
    var count: Int
}

class Library {
    var deposite = 11
    var libraryBooks = ["Book1" : Book(price: 10, count: 3), "Book2" : Book(price: 11, count: 0), "Book3" : Book(price: 12, count: 3)]
    
    func getTheBook(withBook: String) throws {
        guard var book = libraryBooks[withBook] else {
            throw LibraryErrors.notInStock
        }
        guard book.count > 0 else {
            throw LibraryErrors.notInStock
        }
        guard book.price < deposite else {
            throw LibraryErrors.notEnoughtMoney
        }
        
        book.count -= 1
        deposite -= book.price
        libraryBooks[withBook] = book
        print("I got the book: \(book)")
    }
}

var library = Library()

//try? library.getTheBook(withBook: "Book1")
try? library.getTheBook(withBook: "Book2")
try? library.getTheBook(withBook: "Book3")

do {
    try library.getTheBook(withBook: "Book3")
} catch LibraryErrors.notEnoughtMoney {
    print("Не хватает денег")
} catch LibraryErrors.notInStock {
    print("Книги нет в наличии")
}

// тест 1

