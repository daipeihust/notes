# addChildViewController's effect

- Forwarding appearance methods to child view controllers
- Forwarding rotation methods
- (Possibly) forwarding memory warnings
- Avoiding inconsistent VC hierarchies, especially in transitionFromViewController:toViewController:… where both VCs need to have the same parent
- Allowing custom container view controllers to take part in State Preservation and Restoration
- Taking part in the responder chain
- Hooking up the navigationController, tabBarController, etc properties

Sample code:

```objective-c
// add a vc
UIViewController *vc = [[UIViewController alloc] init];
[self addChildViewController:vc];//1
[self.view addSubview:vc.view];//2
[vc didMoveToParentViewController:self];//3

// remove a vc
[vc willMoveToParentViewController:nil]; //1
[vc.view removeFromSuperview]; //2
[vc removeFromParentViewController]; //3
```