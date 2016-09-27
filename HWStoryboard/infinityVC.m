//
//  infinityVC.m
//  HWStoryboard
//
//  Created by Ленар on 25.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "infinityVC.h"
#import "DataUIView.h"

@interface infinityVC ()

@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UIButton *magicButton;
@property (strong, nonatomic) DataUIView *data;

@end

@implementation infinityVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _data = [DataUIView new];
    self.title = [_data.nameArray objectAtIndex:_data.random];
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    [_magicButton setTitle:[_data.nameArray objectAtIndex:_data.random] forState:UIControlStateNormal];
    _magicButton.backgroundColor =[_data.colorArray objectAtIndex:_data.random];
    [_magicButton sizeToFit];
    self.view.backgroundColor = [_data.colorArray objectAtIndex:_data.random];
}
- (IBAction)toRootButton:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}


@end
