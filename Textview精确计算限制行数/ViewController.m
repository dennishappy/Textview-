//
//  ViewController.m
//  FORIn
//
//  Created by chuanglong02 on 16/10/28.
//  Copyright © 2016年 漫漫. All rights reserved.
//

#import "ViewController.h"
#define MASLine 3
@interface ViewController ()<UITextViewDelegate>

@end

@implementation ViewController
{
    CGFloat masH;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UITextView *textview =[[UITextView alloc]initWithFrame:CGRectMake(0, 64, 350, 39)];
    textview.backgroundColor =[UIColor redColor];
    textview.font =[UIFont systemFontOfSize:19.0];
    textview.delegate = self;
    //    NSLog(@"%@",NSStringFromUIEdgeInsets(textview.textContainerInset));
    
    textview.textContainerInset = UIEdgeInsetsMake(8, 0, 8, 0);
    [self.view addSubview:textview];
    
    
}
-(void)textViewDidChange:(UITextView *)textView
{
    
    CGFloat labelHeight = textView.contentSize.height - 16;
    
    CGFloat count = (labelHeight) / textView.font.lineHeight;
    
    //    NSLog(@"%f",textView.font.lineHeight);
    if ((int)count   <= MASLine) {
        textView.frame = CGRectMake(0, 64, 350, textView.contentSize.height);
        [textView setContentOffset:CGPointMake(0, 0) animated:YES];
        if ((int)count == MASLine) {
            masH = textView.frame.size.height;
        }
    }else
    {
        int del = (int)(count)-MASLine;
        textView.frame = CGRectMake(0, 64, 350, masH);
        CGPoint content = CGPointMake(0, 6+ del *textView.font.lineHeight);
        [textView setContentOffset:content animated:NO];
    }
    
    //    NSLog(@"%@",NSStringFromCGPoint(textView.contentOffset));
    
    
    
    
}

@end
