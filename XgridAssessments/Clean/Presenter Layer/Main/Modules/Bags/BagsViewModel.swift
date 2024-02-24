//
//  BagsViewModel.swift
//  XgridAssessments
//
//  Created by MacBook Pro on 24/02/2024.
//

import Foundation

protocol BagsViewModelDelegate: AnyObject {
    func showMessage(message: String,type: ToastType )
    func isLoading(status: Bool)
    func isSuccessProdcuts()
    
}

class BagsViewModel{
    
    var delegate: BagsViewModelDelegate?
    
    //MARK: USECASE
    private let getProductUseCase = GetProductUseCase()//Use Case
    
    //MARK: DISPLAY PROPERTY
    var productResult : ProductResult?
    var product : [Products]? = []
    //MARK:
    var isSeeMoreEnable = false
    var selectedIndex:Int?
    
}
//MARK: - Api Calling
extension BagsViewModel{
    func getProducts(){
        getProductUseCase.execute() { result, isSucces, errorMsg in
            if isSucces {
                self.productResult = result
                self.product = result?.cart?.products ?? []
                self.delegate?.isSuccessProdcuts()
            }
        }
    }

    
    
}
