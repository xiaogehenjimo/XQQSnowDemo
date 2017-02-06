//
//  mainViewController.m
//  XQQSnowDemo
//
//  Created by XQQ on 16/8/18.
//  Copyright © 2016年 UIP. All rights reserved.
//

#import "mainViewController.h"

#define iphoneWidth  [UIScreen mainScreen].bounds.size.width
#define iphoneHeight [UIScreen mainScreen].bounds.size.height

@interface mainViewController ()

@end


@implementation mainViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
     [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(makeSnow) userInfo:nil repeats:YES];
    
}
- (void)makeSnow
{
    CGFloat imageX  =  arc4random()%(int)iphoneWidth;
    CGFloat alpha   =  ((float)(arc4random()%10))/10;
    CGFloat imageWidth   =  arc4random()%20 + 10;
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"snow.jpg"]];
    float x = imageWidth;
    imageView.frame = CGRectMake(imageX, -30, x, x);
    imageView.alpha = alpha;
    [self.view addSubview:imageView];
    [self snowFall:imageView];
}

- (void)snowFall:(UIImageView *)imageView
{

    CGRect frame = imageView.frame;
    
    [UIView animateWithDuration:6.f animations:^{
        imageView.transform = CGAffineTransformMakeRotation(random()%360);
        imageView.frame = CGRectMake(frame.origin.x, iphoneHeight, frame.size.width, frame.size.height);
    } completion:^(BOOL finished) {
        [imageView removeFromSuperview];
    }];
    
    
}


- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}
@end
