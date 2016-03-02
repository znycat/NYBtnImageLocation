//
//  UIButton+NYImageLocation.h
//  ChangButton
//
//  Created by ZNYCAT on 16/3/2.
//  Copyright © 2016年 com.znycat.com. All rights reserved.
//根据图片的位置和图片文字的间距来重新设置button的image和title的排列
//如果图片和文字大于button的大小，文字和图片显示的地方就会超出按钮

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, NYImageLocation) {
    NYImageLocationLeft = 0,              //图片在文字的左边，默认
    NYImageLocationRight,             //图片在文字的右边
    NYImageLocationTop,               //图片在文字的上边
    NYImageLocationBottom,            //图片在文字的下边
};

typedef NS_ENUM(NSInteger, NYOffSetDirection) {
    NYOffSetDirectionLeft = 0,   //图片文字整体向左边偏移，默认
    NYOffSetDirectionRight,      //图片文字整体向右边偏移
    NYOffSetDirectionTop,        //图片文字整体向上边偏移
    NYOffSetDirectionBottom,     //图片文字整体向下边偏移
};

@interface UIButton (NYImageLocation)

/**
 *  根据图片的位置和图片文字的间距来重新设置button的image和title的排列
 *   如果图片和文字大于button的大小，文字和图片显示的地方就会超出按钮
 *
 *  @param location 图片位于文字的哪个方位
 *  @param spacing  图片和文字的间距离
 */
- (void)setImageLocation:(NYImageLocation)location spacing:(CGFloat)spacing;

/**
 *  根据图片的位置和图片文字的间距来重新设置button的image和title的排列，根据offset来确定整体要偏移的方向以及偏移的数值
 *   如果图片和文字大于button的大小，文字和图片显示的地方就会超出按钮
 *
 *  @param postion         图片在文字的哪个方向
 *  @param spacing         图片和文字的间隔
 *  @param offSetDirection 哪个方向偏移
 *  @param offSetVar       偏移多少
 */
- (void)setImageLocation:(NYImageLocation)location spacing:(CGFloat)spacing offSet:(NYOffSetDirection)offSetDirection offSetVar:(CGFloat)offSetVar;
@end
