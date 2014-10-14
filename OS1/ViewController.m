//
//  ViewController.m
//  OS1
//
//  Created by Admin on 10.10.14.
//  Copyright (c) 2014 Soult. All rights reserved.
//

#import "ViewController.h"
#import "EXImageCell.h"
#import "NCData.h"
#import "DetailViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"Операционные системы";
    
    _data = [NCData fetchData];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *const ImageCellId = @"ImageCell";
    
    EXImageCell *cell = [tableView dequeueReusableCellWithIdentifier:ImageCellId];
    
    NCData *item = [_data objectAtIndex:indexPath.row];
    
    cell.cellTextLabel.text = item.title;
    cell.cellImageView.image = [UIImage imageNamed:item.imageName];
    
    return cell;
   
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if (indexPath) {
        NCData *item = [_data objectAtIndex:indexPath.row];
        [segue.destinationViewController setDetail:item];
    }
    
}
    


@end
