//
//  HttpDetailViewController.swift
//  MVVM+Clean
//
//  Created by Apinun on 11/7/2566 BE.
//

import UIKit
import Kingfisher

class HttpDetailViewController: BaseViewController<HttpDetailViewModel> {
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var detailLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadingIndicator.startAnimating()
        viewModel.input.viewDidLoad?()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = viewModel.output.title
        self.detailLabel.text = viewModel.output.detail
        let httpCode: Int = viewModel.output.httpCode
        let url = URL(string: "https://http.dog/\(httpCode).jpg")
        self.mainImageView.kf.setImage(with: url, completionHandler: { [weak self] result in
            guard let self else { return }
            self.loadingIndicator.stopAnimating()
        })
    }
}
