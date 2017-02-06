//
//  secondViewController.m
//  XQQSnowDemo
//
//  Created by XQQ on 16/8/18.
//  Copyright © 2016年 UIP. All rights reserved.
//

#import "secondViewController.h"

#define iphoneWidth  [UIScreen mainScreen].bounds.size.width
#define iphoneHeight [UIScreen mainScreen].bounds.size.height
@interface secondViewController ()
/**
 *  发射器对象
 */
@property (nonatomic, strong) CAEmitterLayer * emitter;


/**
 *  <#Description#>
 */
@property(nonatomic, strong)  UIWebView  *  webView;

@end


@implementation secondViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
 
    //设置发射器
    
    _emitter = [[CAEmitterLayer alloc]init];
    //位置
    _emitter.emitterPosition = CGPointMake(iphoneWidth/2.f, -20);
    //大小
   
    _emitter.emitterSize = CGSizeMake(iphoneWidth - 100, 20);
    _emitter.emitterShape = kCAEmitterLayerLine;
    _emitter.emitterMode = kCAEmitterLayerSurface;
    //发射单元
    //火焰
    CAEmitterCell * fire = [CAEmitterCell emitterCell];
    fire.birthRate = 4.f;
    fire.lifetime = 180.f;
    fire.lifetimeRange = 5.0;
    fire.color = [[UIColor orangeColor] CGColor];
    fire.contents =(id)[[UIImage imageNamed:@"snow.jpg"] CGImage];
    [fire setName:@"fire"];
    
    fire.speed = 10.f;
    fire.velocity = 2.f;
    fire.velocityRange = 10.f;
    fire.yAcceleration = 10.f;
    fire.emissionLongitude = M_PI;
    fire.emissionRange = .5 * M_PI;
    fire.spinRange = .25 * M_PI;
    fire.scaleSpeed = .3;
    fire.scaleRange = .3;
    fire.spin = .2;
    fire.scale = .5;
////    //烟雾
////    CAEmitterCell * smoke = [CAEmitterCell emitterCell];
////    smoke.birthRate = 400;
////    smoke.lifetime = 5.0;
////    smoke.lifetimeRange = 1.5;
////    smoke.color = [[UIColor colorWithRed:1 green:1 blue:1 alpha:.5] CGColor];
////    smoke.contents = (id)[[UIImage imageNamed:@"snow.jpg"]CGImage];
////    [fire setName:@"smoke"];
////    
////    smoke.velocity = 250;
////    smoke.velocityRange = 100;
////    smoke.emissionLongitude = M_PI + M_PI_2;
////    smoke.emissionRange = M_PI_2;
//    
    _emitter.emitterCells = @[fire];
    [self.view.layer addSublayer:_emitter];
    

}



- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}
@end
