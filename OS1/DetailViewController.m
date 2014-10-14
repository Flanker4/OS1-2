//
//  DetailViewController.m
//  OS1
//
//  Created by Admin on 12.10.14.
//  Copyright (c) 2014 Soult. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end


@implementation DetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self reloadData];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setDetail:(NCData *)detail
{
    _detail = detail;
    NSLog(@"%@", _detail.title);
}

-(void)reloadData
{
    if (!_detail){
        return;
    }
    self.navigationItem.title = _detail.title;
    
    self.titleLabel.text = _detail.title;
    self.imageView.image = [UIImage imageNamed:_detail.imageName];
    self.textView.text = _detail.text;
    
    CGRect contentViewFrame = _contentView.frame;
    contentViewFrame.size.height +=_textView.contentSize.height - _textView.frame.size.height;
    _contentView.frame = contentViewFrame;
    _scrollView.contentSize = _contentView.frame.size;
}


@end
