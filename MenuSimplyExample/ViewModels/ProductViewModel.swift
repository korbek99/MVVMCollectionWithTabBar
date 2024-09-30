//
//  ProductViewModel.swift
//  MenuSimplyExample
//
//  Created by Jose David Bustos H on 28-09-17.
//

import Foundation

class ProductViewModel {
    private let allProducts: [Product]
    
    var featuredProducts: [Product] {
        return allProducts.filter { $0.typeDevice == 1 }
    }
    
    var deviceProducts: [Product] {
        return allProducts.filter { $0.typeDevice == 2 }
    }
    
    init(products: [Product]) {
        self.allProducts = products
    }
    
    func productViewModel(for product: Product) -> FeaturedModelViewCell {
        return FeaturedModelViewCell(title: product.itemName, urlToImage: product.photo)
    }
    
    func deviceViewModel(for product: Product) -> ImageModelViewCell {
        return ImageModelViewCell(title: product.itemName, urlToImage: product.photo)
    }
}

