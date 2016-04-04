//
//  ViewController.m
//  GIFViewer
//
//  Created by LNT-21 on 29/03/16.
//  Copyright © 2016 LNT-21. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <QLPreviewControllerDelegate, QLPreviewControllerDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    QLPreviewController *preview = [[QLPreviewController alloc] init];
    preview.dataSource = self;
    [self addChildViewController:preview];
    [self.view addSubview:preview.view];
    self.view.userInteractionEnabled = NO;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - QLPreviewControllerDataSource

- (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)previewController
{
    return 1;
}

- (id)previewController:(QLPreviewController *)previewController previewItemAtIndex:(NSInteger)idx
{
    NSURL *fileURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"dots_img.gif" ofType:nil]];
    return fileURL;
}



@end
