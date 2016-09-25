//
//  CancelVC.h
//  HWStoryboard
//
//  Created by Ленар on 24.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CancelVC : UIViewController{
    NSInteger currentIndex;
}
@property (strong, nonatomic) IBOutlet UILabel *content;
@property (strong, nonatomic) NSArray *dataSource;

@end
