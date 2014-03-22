//
//  DKViewController.m
//  Demo
//
//  Created by dkhamsing on 3/20/14.
//
//

#import "DKViewController.h"
#import "DKImageBrowser.h"
#import "DKModalImageBrowser.h"
 

@implementation DKViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Demo";
        
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Default" style:UIBarButtonItemStylePlain target:self action:@selector(actionSimpleDefault)];
        
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Custom" style:UIBarButtonItemStylePlain target:self action:@selector(actionCustom)];
        
        UILabel *creditsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, self.view.bounds.size.width, 80)];
        creditsLabel.textAlignment = NSTextAlignmentCenter;
        creditsLabel.text = @"DKImageBrowser";
        [self.view addSubview:creditsLabel];
    }
    return self;
}


- (void)actionSimpleDefault {
    // set up data source with UImage objects
    NSArray *imageDataSource = @[ [UIImage imageNamed:@"400-1.jpg"],
                                  [UIImage imageNamed:@"400-2.jpg"],
                                  ];
    
    // default
    DKImageBrowser *imageBrowser = [[DKImageBrowser alloc] init];
    imageBrowser.title = @"😺 UIImage Data Source";
    imageBrowser.DKImageDataSource = imageDataSource;
    
    // push on navigation stack
    [self.navigationController pushViewController:imageBrowser animated:YES];
}


- (void)actionCustom {
    // set up data source with image URLs, thank you http://placekitten.com
    NSMutableArray *kittenDataSource = [[NSMutableArray alloc]init];
    NSInteger imageHeight = 416;
    NSNumber *imageWidth = @(self.view.bounds.size.width - 20);
    for (int i=imageWidth.integerValue; i<(imageWidth.integerValue+15); i++) {
        NSString *placeKitten =
        [NSString stringWithFormat: @"http://placekitten.com/%.0f/%d", i*1.1, imageHeight];
        [kittenDataSource addObject:placeKitten];
    }
    
    // present modally
    DKModalImageBrowser *modalImageBrowser = [[DKModalImageBrowser alloc] init];
    modalImageBrowser.title = @"😺 URL Data Source";
 
    // customize
    modalImageBrowser.imageBrowser.DKImageDataSource = [kittenDataSource copy];
    modalImageBrowser.imageBrowser.DKImagePadding = 5;
    modalImageBrowser.imageBrowser.DKImageWidth = imageWidth.floatValue;
    modalImageBrowser.imageBrowser.DKThumbnailStripHeight = 110;
    modalImageBrowser.imageBrowser.DKBackgroundColor = [UIColor blackColor];
    modalImageBrowser.imageBrowser.DKThumbnailStripPosition = DKThumbnailStripPositionTop;
    
    [self presentViewController:modalImageBrowser animated:YES completion:nil];    
}


@end
