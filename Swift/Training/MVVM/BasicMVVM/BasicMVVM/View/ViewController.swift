//
//  ViewController.swift
//  BasicMVVM
//
//  Created by Alfredo Alba on 5/7/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, PostViewModelDelegate {
    
    private let tableView = UITableView()
    private let viewModel = PostViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Posts"
        viewModel.delegate = self
        setupTableView()
        viewModel.fetchPosts()
    }

    func setupTableView() {
        tableView.frame = view.bounds
        tableView.dataSource = self
        view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let posts = viewModel.posts[indexPath.row]
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "postReuseIdentifier")
        cell.textLabel?.text = posts.title
        cell.detailTextLabel?.text = posts.body
        return cell
    }
    
    func didFechtchPost() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func didFailWithError(_ error: Error) {
        print("Error: \(error.localizedDescription)")
    }
}

