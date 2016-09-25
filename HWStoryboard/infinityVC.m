//
//  infinityVC.m
//  HWStoryboard
//
//  Created by Ленар on 25.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "infinityVC.h"

@interface infinityVC ()

@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UIButton *magicButton;
@property (strong, nonatomic) NSArray *arr;
@property (strong, nonatomic) NSArray *colorArr;

@end

@implementation infinityVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _arr = @[@"hellYeah", @"bad", @"Goood", @"This is nice", @"Hi"];
    _colorArr = @[[UIColor grayColor],[UIColor yellowColor],[UIColor redColor],[UIColor grayColor],[UIColor greenColor]];
    self.title = [_arr objectAtIndex:arc4random()%5];
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    [_magicButton setTitle:[_arr objectAtIndex:arc4random()%5] forState:UIControlStateNormal];
    _magicButton.backgroundColor =[_colorArr objectAtIndex:arc4random()%5];
    [_magicButton sizeToFit];
    self.view.backgroundColor = [_colorArr objectAtIndex:arc4random()%5];
}
- (IBAction)toRootButton:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}


@end
