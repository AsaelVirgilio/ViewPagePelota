//
//  ViewFigura.m
//  PageViewPelota
//
//  Created by Sverovich on 1/21/17.
//  Copyright © 2017 Asael Virgilio. All rights reserved.
//

#import "ViewFigura.h"

@interface ViewFigura()
{
    int paso;
    int limitX;
    int radio;
    int valYF;
    BOOL fin;
    
}


@end

@implementation ViewFigura


-(id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        
        fin = NO;
        limitX = frame.size.width;
        radio = 50;
        
        [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(movimientoFigura) userInfo:nil repeats:YES];
    
    }
    
    return self;
}

-(void)initFiguraWithOrigenX:(int)valX y:(int)valY
{
    valYF = valY;
    paso = valX;
    self.frame = CGRectMake(valX,valYF,100,100);
    self.alpha = 0.5;
    self.layer.cornerRadius = radio;
    self.backgroundColor = [UIColor blueColor];
    
}
-(void)movimientoFigura
{
    
    int red = arc4random() % 256;
    int gre = arc4random() % 256;
    int blu = arc4random() % 256;
    
    float redF = (float)red/256;
    float greF = (float)gre/256;
    float bluF = (float)blu/256;

    if(paso + (radio * 2) < limitX && !fin)
    {
        paso += 20;
    
    }else
    {
        fin = YES;
        
        if(paso <= 0)
            fin = NO;
        
        paso -= 20;
    }
    
    
    [UIView animateWithDuration:0.5 animations:^{
        self.backgroundColor = [UIColor colorWithRed:redF green:greF blue:bluF alpha:1.0];
        self.frame = CGRectMake(paso, valYF, 100, 100);
//        self.layer.cornerRadius = radio;
    }];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
