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
    
    //Устанавливаем новый размер области скрола
    //ширина такая же как и размер ScrollView
    //высота - положение view с текстом (self.textView.frame.origin.y) + его высота (высоту текста у textView можно взять черз textView.contentSize.height)
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width,self.textView.contentSize.height+self.textView.frame.origin.y);

}


@end
