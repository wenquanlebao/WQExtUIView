//
//  WQExtView.h
//  testGes
//

#import <UIKit/UIKit.h>

@interface WQExtView : UIView

/**
 扩展响应区域
 设定值为单侧的px
 上下左右都会加上这个扩展值
 */
@property (nonatomic, assign) NSInteger extInteractEdge;

/**
 扩展响应区域
 */
@property (nonatomic, assign) UIEdgeInsets extInteractInsets;

@end
