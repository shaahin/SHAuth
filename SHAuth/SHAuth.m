//
//  SHAuth.m
//  SHAuth
//
//  Created by Shahin Katebi on 11/12/13.
//  Copyright (c) 2013 Shaahin.us. All rights reserved.
//

#import "SHAuth.h"


@interface SHAuth ()
@property (nonatomic) NSString * pathToFile;
@end
@implementation SHAuth
@synthesize user = _user;
CWL_SYNTHESIZE_SINGLETON_FOR_CLASS(SHAuth)

- (id)init
{
    self = [super init];
    self.popSignInAutomatically = YES;
    return self;
}
- (NSString *) pathToFile
{
    if(!_pathToFile)
    {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory , NSUserDomainMask, YES);
        NSString* supportDir = [paths objectAtIndex:0];
        _pathToFile = [NSString stringWithFormat:@"%@/auth.data", supportDir];
    }
    return _pathToFile;
}
- (SHUser *)user
{
    if(!_user && [[NSFileManager defaultManager] fileExistsAtPath:self.pathToFile])
        _user = [NSKeyedUnarchiver unarchiveObjectWithFile:self.pathToFile];
    return _user;
}
- (void)setUser:(SHUser *)user
{
    _user = user;
    if(user)
    {
        [NSKeyedArchiver archiveRootObject:user toFile:[self pathToFile]];
        [[NSNotificationCenter defaultCenter] postNotificationName:SHAUTH_NOTIFICATION_SIGNEDIN object:user];
    }
    else
    {
        [NSKeyedArchiver archiveRootObject:user toFile:[self pathToFile]];
        [[NSNotificationCenter defaultCenter] postNotificationName:SHAUTH_NOTIFICATION_SIGNEDOUT object:nil];
    }
}

- (BOOL)isAuthenticated
{
    return (self.user)?YES:NO;
}


@end
