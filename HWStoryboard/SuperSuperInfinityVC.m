//
//  SuperSuperInfinityVC.m
//  HWStoryboard
//
//  Created by Ленар on 25.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "SuperSuperInfinityVC.h"

@interface SuperSuperInfinityVC ()

@property (strong, nonatomic) NSArray *arr;
@property (strong, nonatomic) NSArray *colorArr;
@property (weak, nonatomic) IBOutlet UIButton *magicBut;

@end

@implementation SuperSuperInfinityVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _arr = @[@"hellYeah", @"bad", @"Goood", @"This is nice", @"Hi"];
    _colorArr = @[[UIColor grayColor],[UIColor yellowColor],[UIColor redColor],[UIColor grayColor],[UIColor greenColor]];
    self.title = [_arr objectAtIndex:arc4random()%5];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    [_magicBut setTitle:@"" forState:UIControlStateNormal];
    _magicBut.frame = CGRectMake(self.view.center.x, self.view.center.y, 5, 5);
    [_magicBut setCenter:self.view.center];
    self.view.backgroundColor = [_colorArr objectAtIndex:arc4random()%5];
    _magicBut.backgroundColor =[_colorArr objectAtIndex:arc4random()%5];
}

- (void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    [_magicBut setTitle:[_arr objectAtIndex:arc4random()%5] forState:UIControlStateNormal];
    [_magicBut sizeToFit];
}

- (IBAction)infPushButton:(id)sender {
    UIViewController *myController = [self.storyboard instantiateViewControllerWithIdentifier:@"MyController"];
    [self.navigationController pushViewController: myController animated:YES];
}

- (IBAction)toRootButton:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
