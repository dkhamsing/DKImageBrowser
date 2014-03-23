//
//  DemoTests.m
//  DemoTests
//
//  Created by Daniel on 3/20/14.
//
//

#import <XCTest/XCTest.h>
#import "DKImageBrowser.h"

@interface DemoTests : XCTestCase
@property (nonatomic,strong) DKImageBrowser *imageBrowser;
@end

@implementation DemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.imageBrowser = [[DKImageBrowser alloc] init];
    self.imageBrowser.DKImageDataSource = @[ @"http://placekitten.com/200/300", ];

    self.imageBrowser.DKBackgroundColor = [UIColor redColor];
    
    //TODO: write tests for the following
    self.imageBrowser.DKImagePadding = 5;
    self.imageBrowser.DKImageWidth = 100;
    self.imageBrowser.DKThumbnailStripHeight = 60;
    self.imageBrowser.DKThumbnailStripPosition = DKThumbnailStripPositionTop;
    
    [self.imageBrowser viewWillAppear:YES];
    
    // Fix for weird xcode 5 bug, see http://stackoverflow.com/questions/19233626/xcode-5-says-tests-failed-but-shows-green-checkmarks
    //sleep(1);
}


- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testDKImageBrowser {
    XCTAssertTrue(self.imageBrowser.view.backgroundColor == [UIColor redColor] , @"");
    

}

@end
