//
//  SHSignInViewController.h
//  SHAuth
//
//  Created by Shahin Katebi on 11/12/13.
//  Copyright (c) 2013 Shaahin.us. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SHAuth.h"
#import "SHAuthenticatedViewController.h"
@class SHSignInViewController;
@protocol SHAuthSigninControllerDelegate
- (void) shSigninViewController: (SHSignInViewController *) signinViewController didSignInWithUser: (SHUser *) user;
- (void) shSigninViewControllerDidCancel: (SHSignInViewController *) signinViewController;
@end
@interface SHSignInViewController : UIViewController

@property (nonatomic) id<SHAuthSigninControllerDelegate> delegate;
@end
