# Textview-
 textview.textContainerInset = UIEdgeInsetsMake(8, 0, 8, 0); //默认的文字上下边距
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


//新人上线，没有做封装，可自行封装。（🙂）
