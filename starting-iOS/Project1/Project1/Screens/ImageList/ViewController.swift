//
//  ViewController.swift
//  Project1
//
//  Created by Pedro Freddi on 03/02/23.
//

import UIKit

class ViewController: UIViewController {

// MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    
// MARK: - Properties
    
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        setupTableView()
    }

    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "picture")
    }
    
    func getData() {
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func presentImageDetails(using imageName: String) {
        let viewController = UIStoryboard(name: "ImageDetails", bundle: nil).instantiateViewController(identifier: "ImageDetailsViewController") { creator in
            let viewController = ImageDetailsViewController(coder: creator, imageName: imageName)
            return viewController
        }
        self.present(viewController, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "picture", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = pictures[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let imageName = pictures[indexPath.row]
        self.presentImageDetails(using: imageName)
        
    }
}

