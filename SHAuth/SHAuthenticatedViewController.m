//
//  SHAuthenticatedViewController.m
//  SHAuth
//
//  Created by Shahin Katebi on 11/12/13.
//  Copyright (c) 2013 Shaahin.us. All rights reserved.
//

#import "SHAuthenticatedViewController.h"

@interface SHAuthenticatedViewController () <SHAuthSigninControllerDelegate>

@end

@implementation SHAuthenticatedViewController
- (void) checkStatus
{
    SHAuth *shauth = [SHAuth sharedSHAuth];
    if(!shauth.isAuthenticated && shauth.popSignInAutomatically)
    {
        shauth.signInViewController.delegate = self;
        [self presentViewController:shauth.signInViewController animated:YES completion:^(){}];
    }

}
- (SHAuth *)shAuth
{
    return [SHAuth sharedSHAuth];
}
-(void)viewDidLoad
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(userSignedOut:) name:SHAUTH_NOTIFICATION_SIGNEDOUT object:nil];
}
- (void)viewDidAppear:(BOOL)animated
{
    [self checkStatus];
}
- (void) userSignedOut: (NSNotification *) notification
{
    [self checkStatus];
}

- (void)shSigninViewController:(UIViewController<SHAuthSigninControllerDelegate> *)signinViewController didSignInWithUser:(SHUser *)user
{
    SHAuth *shauth = [SHAuth sharedSHAuth];
    shauth.user = user;

    [signinViewController dismissViewControllerAnimated:YES completion:^{}];
}
- (void)shSigninViewControllerDidCancel:(UIViewController<SHAuthSigninControllerDelegate> *)signinViewController
{

}
@end
