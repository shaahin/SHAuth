//
//  SignInViewController.m
//  SHAuthExample
//
//  Created by Shahin Katebi on 11/12/13.
//  Copyright (c) 2013 Shaahin.us. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signin:(id)sender {
    SHUser *user = [SHUser new];
    user.username = self.username.text;
    user.password = self.password.text;
    [self.delegate shSigninViewController:self didSignInWithUser:user];
}
@end
