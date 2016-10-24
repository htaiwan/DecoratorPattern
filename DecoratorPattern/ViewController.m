//
//  ViewController.m
//  DecoratorPattern
//
//  Created by Chien-Tai Cheng on 10/23/16.
//  Copyright © 2016 Chien-Tai Cheng. All rights reserved.
//

#import "ViewController.h"
#import "Burger.h"
#import "Cheese.h"
#import "FrenchFries.h"
#import "SoftDrinks.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    Burger *burger=[[Burger alloc] init];
    NSLog(@"Ordered item: %@ price: %lf",burger.getDescription,burger.getPrice);

    Burger *burgerWithCheese=[[Cheese alloc] initWithBurger:burger];
     NSLog(@"Ordered item: %@ price: %lf",burgerWithCheese.getDescription,burgerWithCheese.getPrice);

    Burger *burgerWithCheeseNfrenchFries=[[FrenchFries alloc] initWithBurger:burgerWithCheese];
    NSLog(@"Ordered item: %@ price: %lf",burgerWithCheeseNfrenchFries.getDescription,burgerWithCheeseNfrenchFries.getPrice);

    Burger *BurgerWithAll=[[SoftDrinks alloc] initWithBurger:burgerWithCheeseNfrenchFries];
    NSLog(@"Ordered item: %@ price %lf",BurgerWithAll.getDescription,BurgerWithAll.getPrice);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
