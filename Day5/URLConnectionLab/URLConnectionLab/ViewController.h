//
//  ViewController.h
//  URLConnectionLab
//
//  Created by JETS Mobile Lab on 3/11/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)syncButton:(UIButton *)sender;
- (IBAction)asyncButton:(UIButton *)sender;

@end

