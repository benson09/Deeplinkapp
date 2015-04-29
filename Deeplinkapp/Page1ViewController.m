//
//  Page1ViewController.m
//  Deeplinkapp
//
//  Created by Jared McFarland on 4/29/15.
//  Copyright (c) 2015 Jared McFarland. All rights reserved.
//

#import "Page1ViewController.h"

@interface Page1ViewController ()

@end

@implementation Page1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-50, self.view.frame.size.height/2-15, 100, 30)];
    [label setTextColor:[UIColor blackColor]];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setText:@"Page 1"];
    
    [self.view addSubview:label];
}

@end
