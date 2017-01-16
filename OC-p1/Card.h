//
//  Car.h
//  OC-p1
//
//  Created by 吉安 on 15/01/2017.
//  Copyright © 2017 An Ji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property(nonatomic,strong) NSString *content;
@property(nonatomic) BOOL matched;
@property(nonatomic) BOOL chosen;

-(int) match:(NSArray *) otherCards;
@end
