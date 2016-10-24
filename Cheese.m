//
//  Cheese.m
//  DecoratorPattern
//
//  Created by Chien-Tai Cheng on 10/23/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#define cheesePrice 30.0;

#import "Cheese.h"

@implementation Cheese

-(id)initWithBurger:(Burger *)theBurger
{
    self=[super init];
    if (self)
    {
        self.burger=theBurger;
    }
    return self;
}

//Adding cheese description
-(NSString *)getDescription
{
    return [NSString stringWithFormat:@"%@ ,cheese",self.burger.getDescription];
}

//Adding cheese price

-(double)getPrice
{
    return self.burger.getPrice+cheesePrice;
}

@end
