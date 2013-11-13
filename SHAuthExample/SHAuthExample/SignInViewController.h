//
//  SignInViewController.h
//  SHAuthExample
//
//  Created by Shahin Katebi on 11/12/13.
//  Copyright (c) 2013 Shaahin.us. All rights reserved.
//

#import "SHSignInViewController.h"

@interface SignInViewController : SHSignInViewController
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)signin:(id)sender;

@end
