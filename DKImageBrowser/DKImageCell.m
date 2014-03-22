//
//  DKImageCell.m
//
//  Created by dkhamsing on 3/20/14.
//
//

#import "DKImageCell.h"


@implementation DKImageCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.DKImageView = [[UIImageView alloc] initWithFrame:self.bounds];
        [self.contentView addSubview:self.DKImageView];
    }
    return self;
}


- (void)prepareForReuse {
    [super prepareForReuse];
    self.DKImageView.image = nil;
}

 
@end
