//
//  DataUIView.m
//  HWStoryboard
//
//  Created by Ленар on 27.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "DataUIView.h"

@interface DataUIView()

@end

@implementation DataUIView

- (NSArray *) nameArray {
    return @[@"hellYeah", @"bad", @"Goood", @"This is nice", @"Hi"];
}

- (NSArray *) colorArray {
    return @[[UIColor grayColor],[UIColor yellowColor],[UIColor redColor],[UIColor grayColor],[UIColor greenColor]];
}

- (int)random{
    return arc4random()%(int)self.nameArray.count;
}

@end
