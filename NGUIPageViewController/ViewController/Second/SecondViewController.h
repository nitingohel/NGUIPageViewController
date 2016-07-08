//
//  SecondViewController.h
//  NGUIPageViewController
//
//  Created by Nitin Gohel on 07/07/16.
//  Copyright © 2016 Nitin Gohel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomDelegate.h"
@interface SecondViewController : UIViewController
@property (nonatomic,assign) id<CustomDelegate> delegate;
@end
