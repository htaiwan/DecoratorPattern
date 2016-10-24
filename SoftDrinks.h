//
//  SoftDrinks.h
//  DecoratorPattern
//
//  Created by Chien-Tai Cheng on 10/23/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "Burger.h"

@interface SoftDrinks : Burger

@property Burger *burger;

-(id)initWithBurger:(Burger *)theBurger;

@end
