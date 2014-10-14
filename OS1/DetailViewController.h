//
//  DetailViewController.h
//  OS1
//
//  Created by Admin on 12.10.14.
//  Copyright (c) 2014 Soult. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NCData.h"


@interface DetailViewController : UIViewController

@property (nonatomic, strong) NCData *detail;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
