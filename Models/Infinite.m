//
//  Infinite.m
//  Instagram
//
//  Created by Julia Navarro Goldaraz on 6/30/22.
//

#import "Infinite.h"

@implementation Infinite

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

UIActivityIndicatorView* activityIndicatorView;
static CGFloat _defaultHeight = 60.0;

+ (CGFloat)defaultHeight{
    return _defaultHeight;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
    [self setupActivityIndicator];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
    [self setupActivityIndicator];
    }
    return self;
}


- (void)layoutSubviews{
    [super layoutSubviews];
    activityIndicatorView.center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
}


- (void)setupActivityIndicator{
    activityIndicatorView = [[UIActivityIndicatorView alloc] init];
    activityIndicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleMedium;
    activityIndicatorView.hidesWhenStopped = true;
    [self addSubview:activityIndicatorView];
}


-(void)stopAnimating{
    [activityIndicatorView stopAnimating];
    self.hidden = true;
}


-(void)startAnimating{
    [activityIndicatorView startAnimating];
    self.hidden = false;
}

@end
