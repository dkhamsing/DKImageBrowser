//
//  ImageTests.m
//  Demo
//
//  Created by Daniel on 3/22/14.
//
//

#import <XCTest/XCTest.h>
#import "DKImageBrowser.h"

@interface ImageTests : XCTestCase
@property (nonatomic,strong) DKImageBrowser *imageBrowser;
@end

@implementation ImageTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.imageBrowser = [[DKImageBrowser alloc] init];
    self.imageBrowser.DKImageDataSource = @[ [UIImage imageNamed:@"400-1.jpg"] ];
    
    [self.imageBrowser viewWillAppear:YES];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTAssertTrue([self.imageBrowser.DKImageDataSource[0] isKindOfClass:[UIImage class]], @"");

}

@end
