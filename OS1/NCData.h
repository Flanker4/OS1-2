//
// BCData.h
//
//
//2013

#import <Foundation/Foundation.h>

@interface NCData : NSObject


@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *imageName;

+ (NSArray *)fetchData;

@end