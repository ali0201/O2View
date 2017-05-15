//
//  ViewController.m
//  ChangeAppIconDemo
//
//  Created by ZouJianMing on 2017/5/12.
//  Copyright © 2017年 Kevin. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+Present.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray<NSString *> *weatherArray;

- (IBAction)changeIconAction:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.weatherArray = @[
                          @"icon_cloudy",
                          @"icon_heavyRain",
                          @"icon_lightRain",
                          @"icon_shine",
                          @"icon_snow"
                          ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)changeIconAction:(UIButton *)sender {
    NSString *iconName = self.weatherArray[arc4random() % self.weatherArray.count];
    if (![[UIApplication sharedApplication] supportsAlternateIcons]) {
        return;
    }
    
    [[UIApplication sharedApplication] setAlternateIconName:iconName completionHandler:^(NSError * _Nullable error) {
        if (error) {
            UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Waring" message:@"更换APP ICON失败" preferredStyle:UIAlertControllerStyleAlert];
            [alertVC addAction:okAction];
            [self presentViewController:alertVC animated:YES completion:nil];
        }
    }];
    
    // 如果 import 了 UIViewController+Present.h 就算成功换了icon都不会弹窗
}

@end
