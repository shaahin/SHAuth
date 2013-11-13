//
//  SHUser.h
//  GameCenter
//
//  Created by Shahin Katebi on 11/6/12.
//  Copyright (c) 2012 Yara Information Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SHUser : NSObject
@property (nonatomic) NSString *username;
@property (nonatomic) NSString *userId;
@property (nonatomic) NSString *password;
@property (nonatomic) NSString *dateTime;
@property (nonatomic) NSArray *userInfo;
@end
