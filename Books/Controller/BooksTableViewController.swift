import UIKit

struct Book {
    var image: String
    var author: String
    var book: String
}

class BookTableViewCell: UITableViewCell {
    @IBOutlet weak var lblBook: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var imgBook: UIImageView!
}

class BooksTableViewController: UITableViewController {

    let books = [
        Book(image: "at", author: "Autor 1", book: "Livro 1"),
        Book(image: "at", author: "Autor 2", book: "Livro 2"),
        Book(image: "at", author: "Autor 3", book: "Livro 3"),
        Book(image: "at", author: "Autor 4", book: "Livro 4"),
        Book(image: "at", author: "Autor 5", book: "Livro 5")
    ]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as! BookTableViewCell

        let country = books[indexPath.row]
        cell.lblBook?.text = country.book
        cell.lblAuthor?.text = country.author
        cell.imgBook?.image = UIImage(named: country.image)

        return cell
    }

}
