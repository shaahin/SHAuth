//
//  SHAuthenticatedViewController.h
//  SHAuth
//
//  Created by Shahin Katebi on 11/12/13.
//  Copyright (c) 2013 Shaahin.us. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SHAuth.h"
@interface SHAuthenticatedViewController : UIViewController
- (void) checkStatus;
- (SHAuth *) shAuth;
@end
