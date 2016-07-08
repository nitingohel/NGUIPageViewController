//
//  CustomDelegate.h
//  NGUIPageViewController
//
//  Created by Nitin Gohel on 08/07/16.
//  Copyright © 2016 Nitin Gohel. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CustomDelegate <NSObject>
-(void)ChangeDirectonTopage:(NSUInteger)index direction:(UIPageViewControllerNavigationDirection)direction;
@end