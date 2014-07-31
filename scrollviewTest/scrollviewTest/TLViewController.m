//
//  TLViewController.m
//  scrollviewTest
//
//  Created by Creolophus on 7/31/14.
//  Copyright (c) 2014 Creolophus. All rights reserved.
//

#import "TLViewController.h"

@interface TLViewController ()<UIScrollViewDelegate>
@property (strong, nonatomic)  UIScrollView *scrollView;
@property (strong, nonatomic)  UIImageView *imageView;

@end

@implementation TLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(20, 30, 250, 400)];
    _scrollView.delegate = self;
    _scrollView.maximumZoomScale = 4.0;
    _scrollView.minimumZoomScale = 1.0;
    _scrollView.zoomScale = 3.0;
    _scrollView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_scrollView];
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(30, 130, 150, 150)];
    _imageView.backgroundColor = [UIColor redColor];
    [_scrollView addSubview:_imageView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return _imageView;
}
//设置到中间
//- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
//    [_imageView setCenter:CGPointMake(scrollView.frame.size.width / 2, scrollView.frame.size.height / 2)];
//}
//
@end
