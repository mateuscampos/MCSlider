//
//  MCSlider.m
//  
//
//  Created by Mateus Campos on 02/10/15.
//
//

#import "MCSlider.h"

@implementation MCSlider

- (void)milestoneSlider:(UISlider *)slider {
    
    int discreteValue = roundl([slider value]);
    [slider setValue:(float)discreteValue];
    
    if ([self.delegate respondsToSelector:@selector(sliderChangedToValue:)]) {
        [self.delegate sliderChangedToValue:roundl([slider value])];
    }
    
}

@end
