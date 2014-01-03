//
//  ViewController.m
//  SegmentedControlTest
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)chooseNumber:(id)sender;

@end

@implementation ViewController {
    UISegmentedControl *segment;
}

- (void) handleBallSelection:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            NSLog(@"야구!");
            break;
        case 1:
            NSLog(@"축구!");
            break;
        case 2:
            NSLog(@"배구!");
            break;
        case 3:
            NSLog(@"테니스!");
            break;
        default:
            break;
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    //
    UIImage *baseball = [UIImage imageNamed:@"Baseball.png"];
    UIImage *football = [UIImage imageNamed:@"Football.png"];
    UIImage *volleyball = [UIImage imageNamed:@"Volleyball.png"];
    UIImage *tennisball = [UIImage imageNamed:@"Tennisball.png"];
    NSArray *items = [NSArray arrayWithObjects:baseball, football, volleyball, tennisball, nil];
    
    segment = [[UISegmentedControl alloc] initWithItems:items];
    segment.frame = CGRectMake(10, 100, 300, 40);
    [self.view addSubview:segment];
    
    segment.selectedSegmentIndex = 2;
    
    // 변경이벤트
    [segment addTarget:self action:@selector(handleBallSelection:) forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)chooseNumber:(id)sender {
    UISegmentedControl *control = (UISegmentedControl *)sender;
    NSString *selectedStr = [control titleForSegmentAtIndex:control.selectedSegmentIndex];
    NSLog(@"Index : %d - Title : %@", control.selectedSegmentIndex, selectedStr);
}
@end
