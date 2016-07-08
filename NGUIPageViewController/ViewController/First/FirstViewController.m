//
//  FirstViewController.m
//  NGUIPageViewController
//
//  Created by Nitin Gohel on 07/07/16.
//  Copyright © 2016 Nitin Gohel. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize delegate;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Next:(UIButton *)sender {
    
    if([self.delegate respondsToSelector:@selector(ChangeDirectonTopage:direction:)]) {
        [self.delegate ChangeDirectonTopage:1 direction:UIPageViewControllerNavigationDirectionForward];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
