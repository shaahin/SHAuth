SHAuth
======

##What is it?
**SHAuth** is a simple, light and easy to use solution for mobile apps with Signin/Signup functionality. Just design your SignIn view controller and define which view controller need authenticated user, **SHAuth** handles the rest.

##How to use it?
Simply drag and drop SHAuth folder to your project. And do the following:

1. Add `#import "SHAuth.h"` to your AppDelegate header file.
2. Add the following line to `application: didFinishLaunchingWithOptions:` method: 

		UIStoryboard *mystoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
 	   [SHAuth sharedSHAuth].signInViewController = [mystoryboard instantiateViewControllerWithIdentifier:@"SHAuthSigninViewController"];
which `Main` is your storyboard name.
3. Create a `UIViewController` class which is a subclass of `SHSignInViewController`
4. Create your Sign In view controller in your storyboard, set it's class to the one you've created in step 3. also set it's Storyboard ID to `SHAuthSigninViewController`. Your sign in part is ready to go.

Now let's create a view controller which needs a user to be signed in first.

1. Create a `UIViewController` class which is a subclass of `SHAuthenticatedViewController`
2. Create your authenticated view controller in your storyboard, set it's class to the one you've created in the last step.

You can use `self.shAuth` to access **SHAuth** object anytime. `self.shAuth.isAuthenticated` is a boolean value indicating if the user has been signed in or not. You may get the current signed in user anytime using `self.shAuth.user`.

There's two global notifications in **SHAuth** which let your view controllers be notified at the moment the user signs in or out. so you may do some stuff needed on your views.
You can use it this way:
		
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(userSignedIn:) name:SHAUTH_NOTIFICATION_SIGNEDIN object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(userSignedOut:) name:SHAUTH_NOTIFICATION_SIGNEDOUT object:nil];


The data for the signed in user is persistent and the **SHAuth** will do the whole process of saving and retrieving user data to/from the disk.

You can also check the example project.

## Support

[Support by PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=NWTDXXJEURUY4])


## About

Shahin Katebi

- [Shaahin.us](http://shaahin.us)
- [GitHub/shaahin](http://github.com/shaahin)
- [Twitter/ShahinKatebi](http://twitter.com/ShahinKatebi)



#### Note: This document is being updated.
