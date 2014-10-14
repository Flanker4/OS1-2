//
//  DetailViewController.m
//  OS1
//
//  Created by Admin on 11.10.14.
//  Copyright (c) 2014 Soult. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWhithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self){
        //Custom initialization
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)setDetail:(NCData *)detail
{
    _detail = detail;
}

@end
