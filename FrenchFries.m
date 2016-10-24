//
//  FrenchFries.m
//  DecoratorPattern
//
//  Created by Chien-Tai Cheng on 10/23/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#define frenchFriesPries 20;

#import "FrenchFries.h"

@implementation FrenchFries

-(id)initWithBurger:(Burger *)theBurger
{
    self=[super init];
    if (self)
    {
        self.burger=theBurger;
    }
    return self;
}

//Add description of French fries

-(NSString *)getDescription
{
    return [NSString stringWithFormat:@"%@, frenc fries",self.burger.getDescription];
}

//Add price of French fries

-(double)getPrice
{
    return self.burger.getPrice+frenchFriesPries;
}

@end
