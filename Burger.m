//
//  Burger.m
//  DecoratorPattern
//
//  Created by Chien-Tai Cheng on 10/23/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#define burgerPrice 120.0

#import "Burger.h"

@implementation Burger

-(id)init
{
    self=[super init];
    if (self) {
        //do initialization
    }
    return self;
}

//returns the description of burger

-(NSString *)getDescription
{
    return @"Burger";
}

//return price of burger

-(double)getPrice
{
    return burgerPrice;
}

@end
