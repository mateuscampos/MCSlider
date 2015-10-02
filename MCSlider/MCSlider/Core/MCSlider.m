//
//  MCSlider.m
//  
//
//  Created by Mateus Campos on 02/10/15.
//
//

#import "MCSlider.h"

@implementation MCSlider

+ (instancetype)sharedInstance {
    static MCSlider *_sharedMCSlider = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        _sharedMCSlider = [[self alloc] init];
    });
    
    return _sharedMCSlider;
}

- (void)milestoneSlider:(UISlider *)slider {
    
    int discreteValue = roundl([slider value]);
    [slider setValue:(float)discreteValue];
    
    if ([self.delegate respondsToSelector:@selector(sliderChangedToValue:)]) {
        [self.delegate sliderChangedToValue:roundl([slider value])];
    }
    
}

@end
