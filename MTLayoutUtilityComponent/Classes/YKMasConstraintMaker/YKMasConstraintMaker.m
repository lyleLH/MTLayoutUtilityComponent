//
//  YKMasConstraintMaker.m
//  YKLayoutUtilityComponent
//
//  Created by Tom.Liu on 2021/3/12.
//

#import "YKMasConstraintMaker.h"

 

@interface YKMasConstraintMaker ()
@property (nonatomic,strong) MASConstraintMaker *maker;
@property (nonatomic,strong) MAS_VIEW *obj;
@end

@implementation YKMasConstraintMaker


- (YKMasConstraintMaker *(^)(CGFloat))top {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.top.equalTo(self.obj).with.offset(value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))topToBottom {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.top.equalTo(self.obj.mas_bottom).with.offset(value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))topToCenterY {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.top.equalTo(self.obj.mas_centerY).with.offset(value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))bottom {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.bottom.equalTo(self.obj).with.offset(-value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))bottomToTop {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.bottom.equalTo(self.obj.mas_top).with.offset(-value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))bottomToCenterY {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.bottom.equalTo(self.obj.mas_centerY).with.offset(-value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))left {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.left.equalTo(self.obj).with.offset(value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))leftToRight {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.left.equalTo(self.obj.mas_right).with.offset(value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))leftToCenterX {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.left.equalTo(self.obj.mas_centerX).with.offset(value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))right {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.right.equalTo(self.obj).with.offset(-value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))rightToLeft {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.right.equalTo(self.obj.mas_left).with.offset(-value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))rightToCenterX {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.right.equalTo(self.obj.mas_centerX).with.offset(-value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))centerY {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.centerY.equalTo(self.obj).with.offset(value);
        return self;
    };
}

- (YKMasConstraintMaker *(^)(CGFloat))centerX {
    return ^YKMasConstraintMaker * (CGFloat value) {
        self.maker.centerX.equalTo(self.obj).with.offset(value);
        return self;
    };
}

@end

@implementation MASConstraintMaker (Extentions)
- (YKMasConstraintMaker *(^)(id))to {
    
    return ^YKMasConstraintMaker * (id obj) {
        YKMasConstraintMaker *emaker = [YKMasConstraintMaker new];
        emaker.maker = self;
        emaker.obj = obj;
        return emaker;
    };
}

@end
