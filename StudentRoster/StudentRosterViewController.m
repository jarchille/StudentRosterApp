//
//  ViewController.m
//  StudentRoster
//
//  Created by Jonathan Archille on 11/9/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "StudentRosterViewController.h"
#import "Student.h"

@interface StudentRosterViewController ()

@property (nonatomic, strong) NSArray *StudentArray;

@end

@implementation StudentRosterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Student *studentData = [Student studentwithDictionary:@{@"name": @"Jonathan", @"gitHandle": @"@jarchille", @"emailAddress": @"jarchille@gmail.com", @"age": [NSNumber numberWithInt:22]}];
    self.StudentArray = @[studentData];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.StudentArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DataCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    Student *studentData = self.StudentArray[indexPath.row];
    cell.textLabel.text = studentData.name;
    cell.detailTextLabel.text = studentData.gitHandle;
    
    
    return cell;
}

@end
