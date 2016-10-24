# Decorator Pattern 裝飾模式

****

## What is the pattern 
為既有的功能的動態增加更多功能。

## Why use the pattern     
當為主類別加入新的方法和新的邏輯時，增加原本主類別的複雜度，而這些新加入的東西只是為了滿足一些特定情況下才會執行的特殊行為的需要。

此時裝飾模式提供了一個非常好的解決方案，它把裝飾功能放在單獨類別中，並讓這個類別包裝他所要裝飾的物件。

1. 把主類別中的裝飾功能從類別中移除，這樣可以簡化原本的類別。
2. 把類別中的核心職責跟裝飾功能分開。
3. 各裝飾類別彼此之間能互相獨立，這樣可以任意順序進行組合。

## How to use the pattern

主類別 burger.h

```objective-c
@interface Burger : NSObject

-(NSString *)getDescription;
-(double)getPrice;

@end

```

主類別 burger.m

```objective-c
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

```
裝飾類別 Cheese.h

```objective-c
#import "Burger.h"

@interface Cheese : Burger

@property Burger *burger;

-(id)initWithBurger:(Burger *)theBurger;

@end

```

裝飾類別 Cheese.m

```objective-c
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

// 進行cheese裝飾
-(NSString *)getDescription
{
    return [NSString stringWithFormat:@"%@ ,cheese",self.burger.getDescription];
}

// 進行cheese裝飾

-(double)getPrice
{
    return self.burger.getPrice+cheesePrice;
}

@end

```

用戶端使用

```objective-c
 Burger *burger=[[Burger alloc] init];
 NSLog(@"Ordered item: %@ price: %lf",burger.getDescription,burger.getPrice);

// 將cheese裝飾功能獨立的一個類別，不讓原本burger類別中邏輯複雜化
 Burger *burgerWithCheese=[[Cheese alloc] initWithBurger:burger];
 NSLog(@"Ordered item: %@ price: %lf",burgerWithCheese.getDescription,burgerWithCheese.getPrice); 
     
```