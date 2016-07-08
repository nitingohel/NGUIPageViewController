//
//  fistViewController.m
//  NGUIPageViewController
//
//  Created by Nitin Gohel on 23/06/16.
//  Copyright © 2016 Nitin Gohel. All rights reserved.
//

#import "fistViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"


@interface fistViewController ()

@property (strong, nonatomic) IBOutlet UIButton *btnChange;
@property (strong, nonatomic) NSMutableArray *arrViewControllers;

@end

@implementation fistViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrViewControllers = [NSMutableArray new];
    
    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    self.pageViewController.dataSource = self;
    
    
     [self.arrViewControllers addObject:[self ViewController:@"FirstViewController"]];
     [self.arrViewControllers addObject:[self ViewController:@"SecondViewController"]];
     [self.arrViewControllers addObject:[self ViewController:@"ThirdViewController"]];
     [self.arrViewControllers addObject:[self ViewController:@"FourthViewController"]];
    
    UIViewController  *vc = [self.arrViewControllers objectAtIndex:0];
    
    [self.pageViewController setViewControllers:@[vc]
                   direction:UIPageViewControllerNavigationDirectionForward
                    animated:YES
                  completion:nil];
    
    
    self.pageViewController.view.frame = self.view.bounds;
    
    [self addChildViewController:_pageViewController];
    [self.view addSubview:_pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
    
    
    [self.view bringSubviewToFront:self.btnChange];
    // Do any additional setup after loading the view.
}
- (UIViewController *)ViewController:(NSString*)identifire {
    
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    if([identifire isEqualToString:@"FirstViewController"])
    {
        FirstViewController *vc = [sb instantiateViewControllerWithIdentifier:identifire];
        vc.delegate=self;
        
        return vc;
    }
    else if([identifire isEqualToString:@"SecondViewController"])
    {
        SecondViewController *vc = [sb instantiateViewControllerWithIdentifier:identifire];
         vc.delegate=self;
        return vc;
    }
    else if([identifire isEqualToString:@"ThirdViewController"])
    {
        ThirdViewController *vc = [sb instantiateViewControllerWithIdentifier:identifire];
         vc.delegate=self;
        return vc;
    }
    else
    {
    
        FourthViewController *vc = [sb instantiateViewControllerWithIdentifier:identifire];
         vc.delegate=self;
        return vc;


    }
}


- (IBAction)changePage:(UIButton *)sender {
    
    UIViewController *jumpTo = [self ChangePageToJump:3];
    
    [self.pageViewController setViewControllers:@[jumpTo]
                   direction:UIPageViewControllerNavigationDirectionForward
                    animated:YES
                  completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -  pageview datasource

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    

    NSUInteger currentIndex = [self.arrViewControllers indexOfObject:viewController];
    if(currentIndex == self.arrViewControllers.count - 1)
        return nil;
    
    UIViewController *cVC = [self.arrViewControllers objectAtIndex:currentIndex + 1];
    
    return cVC;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    
    NSUInteger currentIndex = [self.arrViewControllers indexOfObject:viewController];
    if(currentIndex == 0)
        return nil;
    
    UIViewController *cVC = [self.arrViewControllers objectAtIndex:currentIndex - 1];
    return cVC;
}

#pragma mark -  change Page logic

-(UIViewController*)ChangePageToJump:(NSUInteger)PageIndex
{
   
    if(PageIndex < self.arrViewControllers.count)
    {
        UIViewController  *vc = [self.arrViewControllers objectAtIndex:PageIndex];
        return vc;
    }
    else
    {
        UIViewController  *vc = [self.arrViewControllers objectAtIndex:0];
        return vc;
    
    }

}

#pragma mark - custom delegate

-(void)ChangeDirectonTopage:(NSUInteger)index direction:(UIPageViewControllerNavigationDirection)direction
{
    UIViewController *jumpTo = [self ChangePageToJump:index];
    
    [self.pageViewController setViewControllers:@[jumpTo]
                                      direction:direction
                                       animated:YES
                                     completion:nil];

}
@end
