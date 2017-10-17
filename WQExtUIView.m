//
//  WQExtUIView.m
//  testGes
//

#import "WQExtUIView.h"

@implementation WQExtUIView

- (void)setExtInteractEdge:(NSInteger)extInteractEdge
{
    _extInteractEdge = extInteractEdge;
    self.extInteractInsets = UIEdgeInsetsMake(extInteractEdge, extInteractEdge, extInteractEdge, extInteractEdge);
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    return CGRectContainsPoint(CGRectMake(self.bounds.origin.x - self.extInteractInsets.left, self.bounds.origin.y - self.extInteractInsets.top, self.bounds.size.width + self.extInteractInsets.left+self.extInteractInsets.right, self.bounds.size.height + self.extInteractInsets.top+self.extInteractInsets.bottom) , point);
}

@end
