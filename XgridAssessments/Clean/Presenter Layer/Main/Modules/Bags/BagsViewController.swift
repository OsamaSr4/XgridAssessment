//
//  BagsViewController.swift
//  XgridAssessments
//
//  Created by MacBook Pro on 24/02/2024.
//

import UIKit

class BagsViewController: UIViewController  {

    @IBOutlet weak var tableView: UITableView!
    
    
    private var viewModel : BagsViewModel = BagsViewModel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewModel.delegate = self
        self.registerCell()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension BagsViewController {
    func  registerCell(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: ProductTableViewCell.name, bundle: nil), forCellReuseIdentifier: ProductTableViewCell.getIdentifier())
        tableView.register(UINib(nibName: RecommendationTableViewCell.name, bundle: nil), forCellReuseIdentifier: RecommendationTableViewCell.getIdentifier())
        tableView.register(UINib(nibName: RecommendationCollectionViewCell.name, bundle: nil), forCellReuseIdentifier: RecommendationCollectionViewCell.getIdentifier())
        self.viewModel.getProducts()

    }
}


extension BagsViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.product?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.getIdentifier()) as? ProductTableViewCell else {
            return UITableViewCell()
        }
        if let product = self.viewModel.product?[indexPath.row] {
            cell.configureCell(product)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Shopping Cart"
    }
    
}

extension BagsViewController : BagsViewModelDelegate {
    func showMessage(message: String, type: ToastType) {
            
    }
    
    func isLoading(status: Bool) {
            
    }
    
    func isSuccessProdcuts() {
        self.tableView.reloadData()
    }
}
