//
//  CancelVC.m
//  HWStoryboard
//
//  Created by Ленар on 24.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "CancelVC.h"

@interface CancelVC ()

@end

@implementation CancelVC


- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Navigation


- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
