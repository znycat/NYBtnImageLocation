//
//  ViewController.m
//  ChangButton
//
//  Created by IOS on 16/3/2.
//  Copyright © 2016年 com.znycat.com. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+NYImageLocation.h"
@interface ViewController ()
/**
 *  显示的按钮
 */
@property (weak, nonatomic) IBOutlet UIButton *mainBtn;
/**
 *  图片和title的间隔
 */
@property (weak, nonatomic) IBOutlet UITextField *spacingTF;
/**
 *  偏移量
 */
@property (weak, nonatomic) IBOutlet UITextField *offSetVarTF;

@property (weak, nonatomic) IBOutlet UIButton *offSetLeft;
@property (weak, nonatomic) IBOutlet UIButton *offSetRight;
@property (weak, nonatomic) IBOutlet UIButton *offSetTop;
@property (weak, nonatomic) IBOutlet UIButton *offSetBottom;

@property (weak, nonatomic) IBOutlet UIButton *imageLocationLeft;
@property (weak, nonatomic) IBOutlet UIButton *imageLocationRight;
@property (weak, nonatomic) IBOutlet UIButton *imageLocationTop;
@property (weak, nonatomic) IBOutlet UIButton *imageLocationBottom;

@property (nonatomic, assign) NYImageLocation imageLocation;
@property (nonatomic, assign) NYOffSetDirection offSetDirection;
@property (nonatomic, assign) CGFloat spacing;
@property (nonatomic, assign) CGFloat offSetVar;
@end

@implementation ViewController

/**
 *  执行效果
 */
- (IBAction)showClick:(UIButton *)btn {
    self.spacing = self.spacingTF.text.floatValue;
    self.offSetVar = self.offSetVarTF.text.floatValue;
    
    
    [self.mainBtn setImageLocation:self.imageLocation spacing:self.spacing offSet:self.offSetDirection offSetVar:self.offSetVar];
}


- (IBAction)offSetLeftClick:(UIButton *)btn {
    btn.backgroundColor = [UIColor redColor];
    self.offSetTop.backgroundColor = [UIColor clearColor];
    self.offSetBottom.backgroundColor = [UIColor clearColor];
    self.offSetRight.backgroundColor = [UIColor clearColor];
    self.offSetDirection = NYOffSetDirectionLeft;
}
- (IBAction)offSetRightClick:(UIButton *)btn {
    btn.backgroundColor = [UIColor redColor];
    self.offSetTop.backgroundColor = [UIColor clearColor];
    self.offSetBottom.backgroundColor = [UIColor clearColor];
    self.offSetLeft.backgroundColor = [UIColor clearColor];
    self.offSetDirection = NYOffSetDirectionRight;
}
- (IBAction)offSetTopClick:(UIButton *)btn {
    btn.backgroundColor = [UIColor redColor];
    self.offSetBottom.backgroundColor = [UIColor clearColor];
    self.offSetRight.backgroundColor = [UIColor clearColor];
    self.offSetLeft.backgroundColor = [UIColor clearColor];
    self.offSetDirection = NYOffSetDirectionTop;
}
- (IBAction)offSetBottomClick:(UIButton *)btn {
    btn.backgroundColor = [UIColor redColor];
    self.offSetTop.backgroundColor = [UIColor clearColor];
    self.offSetRight.backgroundColor = [UIColor clearColor];
    self.offSetLeft.backgroundColor = [UIColor clearColor];
    self.offSetDirection = NYOffSetDirectionBottom;
}



//_______________

- (IBAction)imageLocationLeftClick:(UIButton *)btn {
    btn.backgroundColor = [UIColor redColor];
    self.imageLocationRight.backgroundColor = [UIColor clearColor];
    self.imageLocationTop.backgroundColor = [UIColor clearColor];
    self.imageLocationBottom.backgroundColor = [UIColor clearColor];
    self.imageLocation = NYImageLocationLeft;
}
- (IBAction)imageLocationRightClick:(UIButton *)btn {
    btn.backgroundColor = [UIColor redColor];
    self.imageLocationLeft.backgroundColor = [UIColor clearColor];
    self.imageLocationTop.backgroundColor = [UIColor clearColor];
    self.imageLocationBottom.backgroundColor = [UIColor clearColor];
    self.imageLocation = NYImageLocationRight;
}
- (IBAction)imageLocationTopClick:(UIButton *)btn {
    btn.backgroundColor = [UIColor redColor];
    self.imageLocationLeft.backgroundColor = [UIColor clearColor];
    self.imageLocationRight.backgroundColor = [UIColor clearColor];
    self.imageLocationBottom.backgroundColor = [UIColor clearColor];
    self.imageLocation = NYImageLocationTop;
}
- (IBAction)imageLocationBottomClick:(UIButton *)btn {
    btn.backgroundColor = [UIColor redColor];
    self.imageLocationLeft.backgroundColor = [UIColor clearColor];
    self.imageLocationRight.backgroundColor = [UIColor clearColor];
    self.imageLocationTop.backgroundColor = [UIColor clearColor];
    self.imageLocation = NYImageLocationBottom;
}


@end
