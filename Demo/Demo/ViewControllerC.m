//
//  ViewControllerC.m
//  TestPush
//
//  Created by 孔凡列 on 2017/7/10.
//  Copyright © 2017年 YY Inc. All rights reserved.
//

#import "ViewControllerC.h"
#import "UIViewController+PresentStack.h"
@interface ViewControllerC ()

@end

@implementation ViewControllerC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    UILabel *label = [[UILabel alloc] init];
    label.center = self.view.center;
    label.text = @"gitKong";
    [label sizeToFit];
    [self.presentContentView addSubview:label];
    NSLog(@"viewControllerC %s - come here",__func__);
}

- (void)dealloc {
    NSLog(@"%s",__func__);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"viewControllers = %@",self.presentStackController.viewControllers);
    [self.presentStackController dismissToRootViewControllerAnimated:YES completion:nil];
}

@end
