//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Flatiron School on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart
{
    var items : [Item] = []
    
    
    func totalPriceInCents() -> Int
    {
        var totalCost: Int = 0
        
        for item in items
        {
            totalCost = totalCost + item.priceInCents
        }
        return totalCost
    }
    
    func addItem(cartItem: Item)
    {
        items.append(cartItem)
    }
    
    func removeItem(cartItem: Item)
    {
        for (index, singleItem) in items.enumerate()
        {
            if singleItem == cartItem
            {
                items.removeAtIndex(index)
            }
        }
        
    }
    
    func itemsWithName(singleItem:String) -> [Item]
    {
        var itemWithNameArray: [Item] = []
        for item in items
        {
            if item.name == singleItem
            {
                itemWithNameArray.append(item)
            }
        }
        return itemWithNameArray
        
    }
    
    func itemsWithMinimumPriceInCents(num:Int) -> [Item]
    {
        var itemsWithMinPriceArray: [Item] = []
        for item in items
        {
            if item.priceInCents >= num
            {
                itemsWithMinPriceArray.append(item)
            }
        }
        
        return itemsWithMinPriceArray
    }
    
    func itemsWithMaximumPriceInCents(num:Int) -> [Item]
    {
        var itemsWithMaxPriceArray: [Item] = []
        for item in items
        {
            if item.priceInCents <= num
            {
                itemsWithMaxPriceArray.append(item)
            }
        }
        
        return itemsWithMaxPriceArray
    }
    
}
