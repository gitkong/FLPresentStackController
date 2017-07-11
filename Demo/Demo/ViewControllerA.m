//
//  ViewControllerA.m
//  TestPush
//
//  Created by 孔凡列 on 2017/7/10.
//  Copyright © 2017年 YY Inc. All rights reserved.
//

#import "ViewControllerA.h"
#import "ViewControllerB.h"
#import "UIViewController+PresentStack.h"
@interface ViewControllerA ()

@end

@implementation ViewControllerA

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    UILabel *label =  [[UILabel alloc] init];
    label.text = @"A";
    label.center = self.view.center;
    [label sizeToFit];
    [self.view addSubview:label];
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"viewControllers = %@",self.presentStackController.viewControllers);
    ViewControllerB *vcB = [[ViewControllerB alloc] init];
    [self.presentStackController presentViewController:vcB animated:YES completion:nil];
}

@end
