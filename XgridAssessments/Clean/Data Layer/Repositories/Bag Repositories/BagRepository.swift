//
//  BagRepository.swift
//  XgridAssessments
//
//  Created by MacBook Pro on 24/02/2024.
//

import Foundation

class BagRepository {
    
    static let sharedInstance:  BagRepository = {
        let instance =  BagRepository()
        return instance
    }()
    
    private var localDataSource: BagsLocalDS!
    private var remoteDataSource: BagsRemoteDS!
    
    init() {
        localDataSource = BagsLocalDS()
        remoteDataSource = BagsRemoteDS()
        
    }
    
    //MARK: - Home
    func getCartProduct(completion: @escaping CBBags){
        let dummydata = localDataSource.loadJson()
        completion(dummydata,nil)
    }

}
