//
//  Student.m
//  StudentRoster
//
//  Created by Jonathan Archille on 11/9/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "Student.h"

@implementation Student

+ (Student *)studentwithDictionary:(NSDictionary *)studentDictionary
{
     Student *studentData = nil;
     if (studentDictionary)
     {
         studentData = [[Student alloc] init];
         studentData.name = studentDictionary[@"name"];
         studentData.gitHandle = studentDictionary[@"gitHandle"];
         studentData.emailAddress = studentDictionary[@"emailAddress"];
         studentData.age = [studentDictionary[@"age"] integerValue];
     }
    
    return studentData;
}


@end
