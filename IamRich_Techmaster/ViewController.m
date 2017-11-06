//
//  ViewController.m
//  IamRich_Techmaster
//
//  Created by admin on 11/6/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *Ruby;
@property (weak, nonatomic) IBOutlet UILabel *IamRich;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];
    self.Ruby.alpha = 0;
    self.IamRich.alpha = 0;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
   // NSLog(@"ruby's alpha = %1.0f", self.Ruby.alpha);
    [UIView animateWithDuration:4 animations:^{
        self.Ruby.alpha = 1;
       // NSLog(@"ruby's alpha = %1.0f", self.Ruby.alpha);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:3 animations:^{
            self.IamRich.center = CGPointMake(self.IamRich.center.x, 360);
            self.IamRich.alpha = 1;
            
        } completion:nil];
    }];
}

 // Do any additional setup after loading the view, typically from a nib.



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
