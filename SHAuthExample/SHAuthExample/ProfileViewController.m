//
//  ProfileViewController.m
//  SHAuthExample
//
//  Created by Shahin Katebi on 11/12/13.
//  Copyright (c) 2013 Shaahin.us. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

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

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(userSignedIn:) name:SHAUTH_NOTIFICATION_SIGNEDIN object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(userSignedOut:) name:SHAUTH_NOTIFICATION_SIGNEDOUT object:nil];

	// Do any additional setup after loading the view.


    if(self.shAuth.isAuthenticated)
    {
        self.userStatus.text = [NSString stringWithFormat:@"user %@ logged in!", self.shAuth.user.username];
    }else
    {
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) userSignedIn: (NSNotification *) notification
{
    self.userStatus.text = [NSString stringWithFormat:@"user %@ logged in!", self.shAuth.user.username];
}
- (void) userSignedOut: (NSNotification *) notification
{
    self.userStatus.text = [NSString stringWithFormat:@"user logged out!"];
}
- (IBAction)signout:(UIButton *)sender {

    self.shAuth.user = nil;
}
@end
