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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UITextView *textview =[[UITextView alloc]initWithFrame:CGRectMake(0, 64, 350, 46)];
    textview.backgroundColor =[UIColor redColor];
    textview.font =[UIFont systemFontOfSize:25.0];
    textview.delegate = self;
//    textview.layoutManager.allowsNonContiguousLayout = NO;
//    NSLog(@"%@",NSStringFromUIEdgeInsets(textview.textContainerInset));
   
    textview.textContainerInset = UIEdgeInsetsMake(8, 0, 8, 0);
    [self.view addSubview:textview];
    
    
}
-(void)textViewDidChange:(UITextView *)textView
{
    
    CGFloat labelHeight = textView.contentSize.height - 16;
    
    CGFloat count = (labelHeight) / textView.font.lineHeight;
   
  
    if (count  < MASLine) {
        textView.frame = CGRectMake(0, 64, 350, count *textView.font.lineHeight +16);
     

    }else
    {
        textView.frame = CGRectMake(0, 64, 350, MASLine *textView.font.lineHeight);

        
    }
//     [textView setContentOffset:CGPointMake(0.0f, (textView.contentSize.height - textView.frame.size.height) / 2) animated:YES];
    [textView scrollRangeToVisible:NSMakeRange(textView.text.length, 1)];
 
   
   

}

@end
