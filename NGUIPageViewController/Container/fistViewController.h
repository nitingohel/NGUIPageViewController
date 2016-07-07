//
//  fistViewController.h
//  NGUIPageViewController
//
//  Created by Nitin Gohel on 23/06/16.
//  Copyright © 2016 Nitin Gohel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fistViewController : UIViewController<UIPageViewControllerDataSource>
@property (strong, nonatomic) UIPageViewController *pageViewController;
@end
