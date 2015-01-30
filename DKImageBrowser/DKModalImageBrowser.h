//
//  DKModalImageBrowser.h
//
//  Created by Daniel on 3/21/14.
//
//

#import <UIKit/UIKit.h>


@class DKImageBrowser;

/** Controller to use if presenting modally. */
@interface DKModalImageBrowser : UINavigationController

/**
 Image browser.
 */
@property (nonatomic,strong) DKImageBrowser *imageBrowser;


@end
