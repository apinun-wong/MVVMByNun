//
//  HomeViewController.swift
//  MVVM+Clean
//
//  Created by Apinun on 9/7/2566 BE.
//

import UIKit

final class HomeViewController: BaseViewController<HomeViewModel> {
    @IBOutlet weak var tableView: UITableView!
    var dataSource: UITableViewDiffableDataSource<HomeSectionType, HomeItemType>? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.input.viewDidLoad?()
        setUpUI()
        setUpTableView()
    }
    
    private func setUpUI() {
        self.title = "Home"
    }
    
    private func setUpTableView() {
        tableView.registerNib(type: HomeTableViewCell.self)
        dataSource = UITableViewDiffableDataSource<HomeSectionType, HomeItemType>(tableView: tableView, cellProvider: { tableView, indexPath, itemIdentifier in
            if let cell: HomeTableViewCell = tableView.dequeueReusableCell() {
               return cell
            }
            return UITableViewCell()
        })
    }
}

enum HomeSectionType: Hashable {
    case httpSection
}

struct HomeItemType: Hashable {
    let title: String
    let shortDescription: String
}
