//
//  DLSearchBar.m
//  DLSearchBarDemo
//
//  Created by FT_David on 16/6/8.
//  Copyright © 2016年 FT_David. All rights reserved.
//

#import "DLSearchBar.h"

@implementation DLSearchBar

-(void)setFont:(UIFont *)font
{
    _font = font;
    [self setNeedsDisplay];
}

-(void)setTextFieldHeight:(CGFloat)textFieldHeight
{
    _textFieldHeight = textFieldHeight;
    [self setNeedsDisplay];
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    UITextField *searchField;
    if ([[[UIDevice currentDevice] systemVersion] floatValue]<7.0){
        searchField=[self.subviews objectAtIndex:1];
    }else{
        searchField=[((UIView *)[self.subviews objectAtIndex:0]).subviews lastObject];
    }
    
    searchField.frame = CGRectMake(8, (self.bounds.size.height - self.textFieldHeight) / 2 , self.bounds.size.width - 16, self.textFieldHeight);
    searchField.font = self.font;
    
}

@end
