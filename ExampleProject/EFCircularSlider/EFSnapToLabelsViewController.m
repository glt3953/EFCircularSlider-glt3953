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
    
    CGFloat sliderWidth = 132;
    CGRect sliderFrame = CGRectMake(60, 100, sliderWidth, sliderWidth);
    EFCircularSlider *orientationSelectCircularSlider = [[EFCircularSlider alloc] initWithFrame:sliderFrame];
    [orientationSelectCircularSlider setSelectHandler:^(NSInteger index) {
//        NSLog(@"index:%ld", (long)index);
    }];
    
    [orientationSelectCircularSlider setFilledColor:[UIColor lightGrayColor]];
    [orientationSelectCircularSlider setUnfilledColor:[UIColor lightGrayColor]];
    
    [orientationSelectCircularSlider setHandleColor:[UIColor whiteColor]];
    
    orientationSelectCircularSlider.lineWidth = sliderWidth / 4;
    orientationSelectCircularSlider.labelFont = [UIFont systemFontOfSize:8];
    orientationSelectCircularSlider.labelColor = [UIColor darkGrayColor];
    
    NSArray *labels = @[@"东北", @"东", @"东南", @"南", @"西南", @"西", @"西北", @"北"];
//    NSArray *labels = @[@"", @"", @"", @"", @"", @"", @"", @""];
    [orientationSelectCircularSlider setInnerMarkingLabels:labels];
    orientationSelectCircularSlider.snapToLabels = YES;
    [self.view addSubview:orientationSelectCircularSlider];
    
    
    sliderWidth = 132;
    sliderFrame = CGRectMake(60, 350, sliderWidth, sliderWidth);
    EFCircularSlider *centerLabelCircularSlider = [[EFCircularSlider alloc] initWithFrame:sliderFrame];
    
    CGFloat labelWidth = sliderWidth / 2;
    CGFloat labelHeight = 30;
    UILabel *centerLabel = [[UILabel alloc] initWithFrame:(CGRect){(sliderWidth - labelWidth) / 2, (sliderWidth - labelHeight) / 2, labelWidth, labelHeight}];
    [centerLabel setBackgroundColor:[UIColor clearColor]];
    [centerLabel setTextColor:[UIColor blueColor]];
    [centerLabel setFont:[UIFont systemFontOfSize:16]];
    [centerLabel setTextAlignment:NSTextAlignmentCenter];
    [centerLabelCircularSlider addSubview:centerLabel];
//    labels = @[@"", @"", @"", @"", @"", @"", @"", @""];
    labels = @[@"东北", @"东", @"东南", @"南", @"西南", @"西", @"西北", @"北"];
    [centerLabelCircularSlider setSelectHandler:^(NSInteger index) {
//        NSLog(@"index:%ld", (long)index);
        [centerLabel setText:labels[index < 0 ? labels.count - 1 : index]];
    }];

    [centerLabelCircularSlider setFilledColor:[UIColor lightGrayColor]];
    [centerLabelCircularSlider setUnfilledColor:[UIColor lightGrayColor]];
    
    [centerLabelCircularSlider setHandleColor:[UIColor whiteColor]];
    
    [centerLabelCircularSlider setInnerMarkingLabels:@[@"", @"", @"", @"", @"", @"", @"", @""]];
    centerLabelCircularSlider.snapToLabels = YES;
    centerLabelCircularSlider.lineWidth = sliderWidth / 4;
    [self.view addSubview:centerLabelCircularSlider];
    
    
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
