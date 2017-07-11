# 介绍
- 多层present指定dismiss，类似UINavigationController的用法

![流程](https://github.com/gitkong/FLPresentStackController/blob/master/Demo/Snip20170711_11.png)

# 用法

- 创建rootViewController

```
self.window = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    ViewController *vc = [[ViewController alloc] init];
    FLPresentStackController *statckController = [[FLPresentStackController alloc] initWithRootViewController:vc];
    self.window.rootViewController = statckController;
    [self.window makeKeyAndVisible];
```

- Present控制器

```
ViewControllerA *vcA = [[ViewControllerA alloc] init];
    [self.presentStackController presentViewController:vcA animated:YES completion:nil];
```

- Dismiss控制器

```
[self.presentStackController dismissToRootViewControllerAnimated:YES completion:nil];
```
