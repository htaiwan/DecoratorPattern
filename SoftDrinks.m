//
//  SoftDrinks.m
//  DecoratorPattern
//
//  Created by Chien-Tai Cheng on 10/23/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#define softDrinksPrice 50

#import "SoftDrinks.h"

@implementation SoftDrinks

-(id)initWithBurger:(Burger *)theBurger

{
    self=[super init];
    if (self)
    {
        self.burger=theBurger;
    }
    return self;
}


//Add description of softdrinks

-(NSString *)getDescription
{
    return [NSString stringWithFormat:@"%@, soft drinks",self.burger.getDescription];
}

//Add price of softdrinks

-(double)getPrice
{
    return self.burger.getPrice+softDrinksPrice;
}

@end
