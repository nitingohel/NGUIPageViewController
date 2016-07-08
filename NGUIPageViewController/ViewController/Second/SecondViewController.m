//
//  SecondViewController.m
//  NGUIPageViewController
//
//  Created by Nitin Gohel on 07/07/16.
//  Copyright © 2016 Nitin Gohel. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize delegate;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)NExt:(UIButton *)sender {
    if([self.delegate respondsToSelector:@selector(ChangeDirectonTopage:direction:)]) {
        [self.delegate ChangeDirectonTopage:2 direction:UIPageViewControllerNavigationDirectionForward];
    }

}
- (IBAction)previous:(UIButton *)sender {
    if([self.delegate respondsToSelector:@selector(ChangeDirectonTopage:direction:)]) {
        [self.delegate ChangeDirectonTopage:0 direction:UIPageViewControllerNavigationDirectionReverse];
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
