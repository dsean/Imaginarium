//
//  ImaginariumViewController.m
//  Imaginarium
//
//  Created by 楊 德忻 on 2014/7/7.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ImaginariumViewController.h"
#import "ImageViewController.h"
@interface ImaginariumViewController ()

@end

@implementation ImaginariumViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://images.apple.com/v/iphone-5s/gallery/a/images/download/%@.jpg",segue.identifier]];
        ivc.title = segue.identifier;
    }
}

@end
