//
//  DKImageBrowser.h
//
//  Created by dkhamsing on 3/20/14.
//
//

#import <UIKit/UIKit.h>


//TODO: left, right
NS_ENUM(NSInteger, DKThumbnailStripPositions) {
    DKThumbnailStripPositionTop,
    DKThumbnailStripPositionBottom,
    // DKThumbnailStripPositionLeft,
    // DKThumbnailStripPositionRight,
};


@interface DKImageBrowser : UIViewController

/**
 Data source list of (String) URLs to images (or UIImage objects).
 */
@property (nonatomic,strong) NSArray *DKImageDataSource;


#pragma mark Customization

/**
 Background color of image browser (optional). The default is white.
 */
@property (nonatomic) UIColor *DKBackgroundColor;


/**
 Padding around the images (optional). The default is 20.
 */
@property (nonatomic) CGFloat DKImagePadding;


/**
 Width of the main image being displayed (optional). The default is the width of the screen -100.
 */
@property (nonatomic) CGFloat DKImageWidth;


/**
 Height of thumnmail strip (optional). The default is 100.
 */
@property (nonatomic) CGFloat DKThumbnailStripHeight;


/**
 Position of the thumbnail strip, either `DKThumbnailStripPositionTop` or `DKThumbnailStripPositionBottom`. The default is `DKThumbnailStripPositionBottom`.
 */
@property (nonatomic) NSInteger DKThumbnailStripPosition;


@end
