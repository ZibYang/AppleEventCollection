//
//  StoreProductView.swift
//  Apple Event
//
//  Created by zzy on 2023/5/3.
//  Copyright © 2023 Personal usage. All rights reserved.
//

import SwiftUI

struct StoreProductView: UIViewControllerRepresentable {
    var isPresentStoreProduct: Binding<Bool>
    var appId: Int
 
    func makeUIViewController(context: Context) -> StoreProductViewController {
        print("The appId: \(appId)")
        let appID = appId
        let viewController = StoreProductViewController(isPresentStoreProduct: isPresentStoreProduct,
                                                        appId: appID)
        return viewController
        
    }

    func updateUIViewController(_ uiViewController: StoreProductViewController, context: Context) {
        if self.isPresentStoreProduct.wrappedValue {
            uiViewController.presentStoreProduct()
        }
    }
}


import UIKit
import StoreKit

class StoreProductViewController: UIViewController {
    
    private var isPresentStoreProduct: Binding<Bool>
    private let appId: Int
    
    init(isPresentStoreProduct: Binding<Bool>, appId: Int) {
        self.isPresentStoreProduct = isPresentStoreProduct
        self.appId = appId
        
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    func presentStoreProduct() {
        let storeProductViewController = SKStoreProductViewController()
        storeProductViewController.delegate = self
        
        let parameters =  [SKStoreProductParameterITunesItemIdentifier: self.appId]
        storeProductViewController.loadProduct(withParameters: parameters) { status, error -> Void in
            if status {
                self.present(storeProductViewController, animated: true, completion: nil)
            } else {
                if let error = error as? SKError {
                    switch error.code {
                    case .storeProductNotAvailable:
                        print("Error: The product is not available on the App Store.")
                    default:
                        print("Error: \(error.localizedDescription)")
                    }
                } else {
                    print("Error: An unknown error occurred.")
                }
            }
        }
        
        DispatchQueue.main.async {
            self.isPresentStoreProduct.wrappedValue = false
        }
    }
}


// MARK: - SKStoreProductViewControllerDelegate
extension StoreProductViewController: SKStoreProductViewControllerDelegate {
    func productViewControllerDidFinish(_ viewController: SKStoreProductViewController) {
        viewController.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
