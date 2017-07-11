//
//  ViewController.m
//  TestPush
//
//  Created by 孔凡列 on 2017/7/10.
//  Copyright © 2017年 YY Inc. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerA.h"
#import "UIViewController+PresentStack.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label =  [[UILabel alloc] init];
    label.text = @"Home";
    label.center = self.view.center;
    [label sizeToFit];
    [self.view addSubview:label];
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self.navigationController pushViewController:[[ViewControllerA alloc] init] animated:YES];
    ViewControllerA *vcA = [[ViewControllerA alloc] init];
    [self.presentStackController presentViewController:vcA animated:YES completion:nil];
}


@end
