//
//  ViewController.h
//  OS1
//
//  Created by Admin on 10.10.14.
//  Copyright (c) 2014 Soult. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSArray *_data;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

