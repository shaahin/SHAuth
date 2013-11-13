//
//  SHUser.m
//  GameCenter
//
//  Created by Shahin Katebi on 11/6/12.
//  Copyright (c) 2012 Yara Information Technology. All rights reserved.
//

#import "SHUser.h"
#define ASCUsername @"username"
#define ASCPassword @"password"
#define ASCDatetime @"datetime"
#define ASCUserId @"userId"
#define ASCUserInfo @"userInfo"

@implementation SHUser

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.username forKey:ASCUsername];
    [coder encodeObject:self.password forKey:ASCPassword];
    [coder encodeObject:self.dateTime forKey:ASCDatetime];
    [coder encodeObject:self.userInfo forKey:ASCUserInfo];
    [coder encodeObject:self.userId forKey:ASCUserId];
}
- (id)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        _username = [coder decodeObjectForKey:ASCUsername];
        _password = [coder decodeObjectForKey:ASCPassword];
        _dateTime = [coder decodeObjectForKey:ASCDatetime];
        _userInfo = [coder decodeObjectForKey:ASCUserInfo];
        _userId = [coder decodeObjectForKey:ASCUserId];
    }
    return self;
}
@end
