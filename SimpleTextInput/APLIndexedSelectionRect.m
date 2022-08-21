//
//  APLIndexedSelectionRect.m
//  SimpleTextInput
//
//  Created by v on 2021/5/29.
//  Copyright © 2021 Apple Inc. All rights reserved.
//

#import "APLIndexedSelectionRect.h"

@implementation APLIndexedSelectionRect {
    CGRect _rect;
    NSWritingDirection _writingDirection;
    BOOL _containsStart;
    BOOL _containsEnd;
    BOOL _isVertical;
}

+ (instancetype)indexedSelectionRectWithRect:(CGRect)rect containsStart:(BOOL)containsStart containsEnd:(BOOL)containsEnd {
    APLIndexedSelectionRect *indexedSelectionRect = [[APLIndexedSelectionRect alloc] initWithRect:rect
                                                                                    containsStart:containsStart
                                                                                      containsEnd:containsEnd
                                                                                       isVertical:NO];

    return indexedSelectionRect;
}

- (instancetype)initWithRect:(CGRect)rect containsStart:(BOOL)containsStart containsEnd:(BOOL)containsEnd isVertical:(BOOL)isVertical {
    if (self = [super init]) {
        _rect = rect;
        _writingDirection = NSWritingDirectionLeftToRight;
        _containsStart = containsStart;
        _containsEnd = containsEnd;
        _isVertical = isVertical;
    }

    return self;
}

- (CGRect)rect {
    return _rect;
}

- (NSWritingDirection)writingDirection {
    return _writingDirection;
}

- (BOOL)containsStart {
    return _containsStart;
}

- (BOOL)containsEnd {
    return _containsEnd;
}

- (BOOL)isVertical {
    return _isVertical;
}

@end
