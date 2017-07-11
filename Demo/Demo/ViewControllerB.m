//
//  ViewControllerB.m
//  TestPush
//
//  Created by 孔凡列 on 2017/7/10.
//  Copyright © 2017年 YY Inc. All rights reserved.
//

#import "ViewControllerB.h"
#import "ViewControllerC.h"
#import "UIViewController+PresentStack.h"

@interface ViewControllerB ()

@end

@implementation ViewControllerB

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    UILabel *label =  [[UILabel alloc] init];
    label.text = @"B";
    label.center = self.view.center;
    [label sizeToFit];
    [self.view addSubview:label];
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.presentStackController presentViewController:[[ViewControllerC alloc] init] animated:YES completion:nil];
}

@end
