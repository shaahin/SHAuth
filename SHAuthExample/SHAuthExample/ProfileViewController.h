//
//  ProfileViewController.h
//  SHAuthExample
//
//  Created by Shahin Katebi on 11/12/13.
//  Copyright (c) 2013 Shaahin.us. All rights reserved.
//

#import "SHAuthenticatedViewController.h"

@interface ProfileViewController : SHAuthenticatedViewController
@property (weak, nonatomic) IBOutlet UILabel *userStatus;
- (IBAction)signout:(UIButton *)sender;

@end
