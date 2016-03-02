# NYBtnImageLocation
##先看效果：
![这里写图片描述](http://img.blog.csdn.net/20160302112501215)

很简单，就是实现让image在title的上下左右边任意调用

##调用
调用起来步骤更容易了，下载我写好的代码，把分类UIButton+NYImageLocation导入

```
#import "UIButton+NYImageLocation.h"
```

调用：这个方法只是设置图片位置和图片与title的间距 

```
//图片在title的上面并且图片和文字之间的间隔是10
[btn setImageLocation:NYImageLocationTop spacing:10]; 
```
基本原理就是这样，大家自己根据自己需求改变。

第二个方法，也可以设置偏移，比如我图片太大，文字太小，计算出来的中心会看起来感觉偏上，我们就需要设置偏移那个方向和偏移多少了。

```
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
```
