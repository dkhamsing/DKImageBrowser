//
//  DKModalImageBrowser.m
//
//  Created by Daniel on 3/21/14.
//
//


#import "DKModalImageBrowser.h"
#import "DKImageBrowser.h"


@implementation DKModalImageBrowser

- (id)init {
    self.imageBrowser = [[DKImageBrowser alloc] init];
    if (self = [super initWithRootViewController:self.imageBrowser]) {
        UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(DKModalActionDone)];
        self.imageBrowser.navigationItem.rightBarButtonItem = doneButton;

    }
    return self;
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:NO];
    
    self.imageBrowser.title = self.title;
}


- (void)DKModalActionDone {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
