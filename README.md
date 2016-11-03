# Textview-
 textview.textContainerInset = UIEdgeInsetsMake(8, 0, 8, 0); //默认的文字上下边距
 -(void)textViewDidChange:(UITextView *)textView
{
    CGFloat labelHeight = textView.contentSize.height - 16;
    
    CGFloat count = (labelHeight) / textView.font.lineHeight;
    
    if (count  < 5) {   //可设置最大行数
        textView.frame = CGRectMake(0, 64, 350, count *textView.font.lineHeight +16);
        
        
    }else
    {
        textView.frame = CGRectMake(0, 64, 350, 5 *textView.font.lineHeight );
        NSLog(@"%f",textView.frame.size.height);
    }
    
}

//新人上线，没有做封装，可自行封装。（🙂）
