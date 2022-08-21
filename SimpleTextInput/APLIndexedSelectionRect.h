//
//  APLIndexedSelectionRect.h
//  SimpleTextInput
//
//  Created by v on 2021/5/29.
//  Copyright © 2021 Apple Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface APLIndexedSelectionRect : UITextSelectionRect

+ (instancetype)indexedSelectionRectWithRect:(CGRect)rect containsStart:(BOOL)containsStart containsEnd:(BOOL)containsEnd;

@end

NS_ASSUME_NONNULL_END
