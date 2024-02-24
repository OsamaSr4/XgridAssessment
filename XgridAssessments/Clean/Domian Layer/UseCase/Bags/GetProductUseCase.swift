//
//  GetProductUseCase.swift
//  XgridAssessments
//
//  Created by MacBook Pro on 24/02/2024.
//

import Foundation


typealias CBPrductUseCase = (_ result: ProductResult?, _ isSucces: Bool, _ errorMsg: String?) -> Void

protocol GetProductUseCaseProtocol {
    func execute(completion: @escaping CBPrductUseCase)
}

class GetProductUseCase: GetProductUseCaseProtocol{
    func execute( completion: @escaping CBPrductUseCase) {
        BagRepository.sharedInstance.getCartProduct() { response, error in
            if let result = response {
                    completion(result, true, nil)
            }else{
                if let nsError = error as? NSError {
                    completion(nil, false, nsError.domain)
                }else{
                }
            }
        }
    }
}
