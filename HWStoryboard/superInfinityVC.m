//
//  superInfinityVC.m
//  HWStoryboard
//
//  Created by Ленар on 25.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "superInfinityVC.h"
#import "DataUIView.h"

@interface superInfinityVC ()

@property (weak, nonatomic) IBOutlet UIButton *magicBut;
@property (strong, nonatomic) DataUIView *data;

@end

@implementation superInfinityVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _data = [DataUIView new];
    self.title = [_data.nameArray objectAtIndex:_data.random];
    _magicBut.frame = CGRectMake(self.view.center.x, self.view.center.y, 5, 5);
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.view.backgroundColor = [_data.colorArray objectAtIndex:_data.random];
    _magicBut.backgroundColor =[_data.colorArray objectAtIndex:_data.random];
    [_magicBut setCenter:self.view.center];
}

- (void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    [_magicBut setTitle:[_data.nameArray objectAtIndex:_data.random] forState:UIControlStateNormal];
    [_magicBut sizeToFit];
}

#pragma mark - Infinity push

- (IBAction)pushBut:(id)sender {
    UIViewController *myController = [self.storyboard instantiateViewControllerWithIdentifier:@"MyController"];
    [self.navigationController pushViewController: myController animated:YES];
}

#pragma mark - Root pop

- (IBAction)toRootButton:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
