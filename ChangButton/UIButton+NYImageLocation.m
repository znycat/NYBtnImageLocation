//
//  UIButton+NYImageLocation.m
//  ChangButton
//
//  Created by ZNYCAT on 16/3/2.
//  Copyright © 2016年 com.znycat.com. All rights reserved.
//

#import "UIButton+NYImageLocation.h"

@implementation UIButton (NYImageLocation)
- (void)setImageLocation:(NYImageLocation)location spacing:(CGFloat)spacing {
    CGFloat imageWith = self.imageView.image.size.width;
    CGFloat imageHeight = self.imageView.image.size.height;
    
    CGFloat titleWidth = [self.titleLabel.text sizeWithFont:self.titleLabel.font].width;
    CGFloat titleHeight = [self.titleLabel.text sizeWithFont:self.titleLabel.font].height;
    //image中心移动的x距离
    CGFloat imageOffsetX = (imageWith + titleWidth) / 2 - imageWith / 2;
    //image中心移动的y距离
    CGFloat imageOffsetY = imageHeight / 2 + spacing / 2;
    //title中心移动的x距离
    CGFloat titleOffsetX = (imageWith + titleWidth / 2) - (imageWith + titleWidth) / 2;
    //title中心移动的y距离
    CGFloat labelOffsetY = titleHeight / 2 + spacing / 2;
    
    switch (location) {
        case NYImageLocationLeft:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
            break;
            
        case NYImageLocationRight:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, titleWidth + spacing/2, 0, -(titleWidth + spacing/2));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageHeight + spacing/2), 0, imageHeight + spacing/2);
            break;
            
        case NYImageLocationTop:
            
            self.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -titleOffsetX, -labelOffsetY, titleOffsetX);
            break;
            
        case NYImageLocationBottom:
            
            self.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -titleOffsetX, labelOffsetY, titleOffsetX);
            
            break;
            
        default:
            break;
    }
    
}

- (void)setImageLocation:(NYImageLocation)location spacing:(CGFloat)spacing offSet:(NYOffSetDirection)offSetDirection offSetVar:(CGFloat)offSetVar{
    CGFloat imageWith = self.imageView.image.size.width;
    CGFloat imageHeight = self.imageView.image.size.height;
    //title的宽度
    CGFloat titleWidth = [self.titleLabel.text sizeWithFont:self.titleLabel.font].width;
    //title的高度
    CGFloat titleHeight = [self.titleLabel.text sizeWithFont:self.titleLabel.font].height;
    
    //image中心移动的x距离
    CGFloat imageOffsetX = (imageWith + titleWidth) / 2 - imageWith / 2;
    //image中心移动的y距离
    CGFloat imageOffsetY = imageHeight / 2 + spacing / 2;
    //title中心移动的x距离
    CGFloat titleOffsetX = (imageWith + titleWidth / 2) - (imageWith + titleWidth) / 2;
    //title中心移动的y距离
    CGFloat labelOffsetY = titleHeight / 2 + spacing / 2;
    
    switch (location) {
        case NYImageLocationLeft:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing/2, 0, spacing/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing/2, 0, -spacing/2);
            break;
            
        case NYImageLocationRight:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, titleWidth + spacing/2, 0, -(titleWidth + spacing/2));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageHeight + spacing/2), 0, imageHeight + spacing/2);
            break;
            
        case NYImageLocationTop:
            
            self.imageEdgeInsets = UIEdgeInsetsMake(-imageOffsetY, imageOffsetX, imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(labelOffsetY, -titleOffsetX, -labelOffsetY, titleOffsetX);
            break;
            
        case NYImageLocationBottom:
            
            self.imageEdgeInsets = UIEdgeInsetsMake(imageOffsetY, imageOffsetX, -imageOffsetY, -imageOffsetX);
            self.titleEdgeInsets = UIEdgeInsetsMake(-labelOffsetY, -titleOffsetX, labelOffsetY, titleOffsetX);
            
            break;
            
        default:
            break;
    }
    
    CGFloat imageTop = self.imageEdgeInsets.top;
    CGFloat imageLeft = self.imageEdgeInsets.left;
    CGFloat imageBottom = self.imageEdgeInsets.bottom;
    CGFloat imageRight = self.imageEdgeInsets.right;
    
    CGFloat titleTop = self.titleEdgeInsets.top;
    CGFloat titleLeft = self.titleEdgeInsets.left;
    CGFloat titleBottom = self.titleEdgeInsets.bottom;
    CGFloat titleRight = self.titleEdgeInsets.right;
    switch (offSetDirection){
        case NYOffSetDirectionLeft:
            self.imageEdgeInsets = UIEdgeInsetsMake(imageTop, imageLeft - offSetVar, imageBottom, imageRight + offSetVar);
            self.titleEdgeInsets = UIEdgeInsetsMake(titleTop, titleLeft - offSetVar, titleBottom, titleRight + offSetVar);
            
            break;
        case NYOffSetDirectionRight:
            self.imageEdgeInsets = UIEdgeInsetsMake(imageTop, imageLeft + offSetVar, imageBottom, imageRight - offSetVar);
            self.titleEdgeInsets = UIEdgeInsetsMake(titleTop, titleLeft + offSetVar, titleBottom, titleRight - offSetVar);
            break;
        case NYOffSetDirectionTop:
            self.imageEdgeInsets = UIEdgeInsetsMake(imageTop - offSetVar , imageLeft, imageBottom + offSetVar, imageRight);
            self.titleEdgeInsets = UIEdgeInsetsMake(titleTop - offSetVar , titleLeft, titleBottom + offSetVar, titleRight);
            break;
        case NYOffSetDirectionBottom:
            self.imageEdgeInsets = UIEdgeInsetsMake(imageTop + offSetVar, imageLeft, imageBottom - offSetVar, imageRight);
            self.titleEdgeInsets = UIEdgeInsetsMake(titleTop + offSetVar, titleLeft, titleBottom - offSetVar, titleRight);
            break;
        default:
            break;
    }
    
}

@end
