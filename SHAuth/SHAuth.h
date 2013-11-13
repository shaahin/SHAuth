//
//  SHAuth.h
//  SHAuth
//
//  Created by Shahin Katebi on 11/12/13.
//  Copyright (c) 2013 Shaahin.us. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CWLSynthesizeSingleton.h"
#import "SHUser.h"
#import "SHSignInViewController.h"

#define SHAUTH_NOTIFICATION_SIGNEDIN @"shauth-signedin"
#define SHAUTH_NOTIFICATION_SIGNEDOUT @"shauth-signedout"

@class SHSignInViewController;
@interface SHAuth : NSObject
CWL_DECLARE_SINGLETON_FOR_CLASS(SHAuth)
@property (nonatomic, strong) SHUser *user;
@property (nonatomic) SHSignInViewController *signInViewController;
@property (nonatomic) BOOL popSignInAutomatically;
- (BOOL) isAuthenticated;

@end
