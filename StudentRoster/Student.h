//
//  Student.h
//  StudentRoster
//
//  Created by Jonathan Archille on 11/9/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *gitHandle;
@property (nonatomic) NSString *emailAddress;
@property (assign) NSInteger age;

+ (Student *)studentwithDictionary:(NSDictionary *)studentDictionary;

@end
