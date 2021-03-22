//
//  YKMasConstraintMaker.h
//  YKLayoutUtilityComponent
//
//  Created by Tom.Liu on 2021/3/12.
//

#import <Foundation/Foundation.h>
#import <Masonry/Masonry.h>
NS_ASSUME_NONNULL_BEGIN

@interface YKMasConstraintMaker : NSObject

- (YKMasConstraintMaker * (^)(CGFloat))top;
- (YKMasConstraintMaker * (^)(CGFloat))topToBottom;
- (YKMasConstraintMaker * (^)(CGFloat))topToCenterY;
- (YKMasConstraintMaker * (^)(CGFloat))bottom;
- (YKMasConstraintMaker * (^)(CGFloat))bottomToTop;
- (YKMasConstraintMaker * (^)(CGFloat))bottomToCenterY;
- (YKMasConstraintMaker * (^)(CGFloat))left;
- (YKMasConstraintMaker * (^)(CGFloat))leftToRight;
- (YKMasConstraintMaker * (^)(CGFloat))leftToCenterX;
- (YKMasConstraintMaker * (^)(CGFloat))right;
- (YKMasConstraintMaker * (^)(CGFloat))rightToLeft;
- (YKMasConstraintMaker * (^)(CGFloat))rightToCenterX;
- (YKMasConstraintMaker * (^)(CGFloat))centerX;
- (YKMasConstraintMaker * (^)(CGFloat))centerY;

@end


@interface MASConstraintMaker (Extentions)
- (YKMasConstraintMaker * (^)(id))to;
@end


NS_ASSUME_NONNULL_END
