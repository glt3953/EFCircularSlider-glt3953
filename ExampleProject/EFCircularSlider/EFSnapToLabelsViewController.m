//
//  EFSnapToLabelsViewController.m
//  EFCircularSlider
//
//  Created by Eliot Fowler on 12/5/13.
//  Copyright (c) 2013 Eliot Fowler. All rights reserved.
//

#import "EFSnapToLabelsViewController.h"
#import "EFCircularSlider.h"

@interface EFSnapToLabelsViewController ()

@end

@implementation EFSnapToLabelsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect sliderFrame = CGRectMake(60, 100, 200, 200);
    EFCircularSlider *orientationSelectCircularSlider = [[EFCircularSlider alloc] initWithFrame:sliderFrame];
    [orientationSelectCircularSlider setSelectHandler:^(NSInteger index) {
        NSLog(@"index:%ld", (long)index);
    }];
    
    [orientationSelectCircularSlider setFilledColor:[UIColor lightGrayColor]];
    [orientationSelectCircularSlider setUnfilledColor:[UIColor lightGrayColor]];
    
    [orientationSelectCircularSlider setHandleColor:[UIColor whiteColor]];
    
    orientationSelectCircularSlider.lineWidth = 30;
    orientationSelectCircularSlider.labelFont = [UIFont systemFontOfSize:16];
    orientationSelectCircularSlider.labelColor = [UIColor darkGrayColor];
    
    NSArray *labels = @[@"东北", @"东", @"东南", @"南", @"西南", @"西", @"西北", @"北"];
//    NSArray *labels = @[@"", @"", @"", @"", @"", @"", @"", @""];
    [orientationSelectCircularSlider setInnerMarkingLabels:labels];
    orientationSelectCircularSlider.snapToLabels = YES;
    [self.view addSubview:orientationSelectCircularSlider];
    
//    sliderFrame = CGRectMake(60, 300, 200, 200);
//    EFCircularSlider* circularSlider = [[EFCircularSlider alloc] initWithFrame:sliderFrame];
//    labels = @[@"B", @"C", @"D", @"E", @"A"];
//    [circularSlider setInnerMarkingLabels:labels];
//    circularSlider.snapToLabels = YES;
//    [self.view addSubview:circularSlider];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
