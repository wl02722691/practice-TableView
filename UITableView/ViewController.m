//
//  ViewController.m
//  UITableView
//
//  Created by 張書涵 on 2019/1/17.
//  Copyright © 2019 張書涵. All rights reserved.
//

#import "ViewController.h"
#import "Course.h"

@interface ViewController ()

@property (strong, nonatomic)NSMutableArray<Course *> * courses;


@end

@implementation ViewController

NSString *cellId = @"cellId";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.courses = NSMutableArray.new;
   
    Course *course = Course.new;
    course.name = @"Hello Alice";
    course.numberOfLessons = @(30);
    [self.courses addObject:course];
    
    self.navigationItem.title = @"Cousrse";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellId];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.courses.count;
};


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    Course *course = self.courses[indexPath.row];
    
    cell.textLabel.text = course.name;
    return cell;
}



@end
