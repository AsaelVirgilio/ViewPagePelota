//
//  ViewController.m
//  PageViewPelota
//
//  Created by Sverovich on 1/21/17.
//  Copyright © 2017 Asael Virgilio. All rights reserved.
//

#import "ViewController.h"
#import "ViewFigura.h"

@interface ViewController ()
{
    ViewFigura *figura;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint punto;
    
    for(UITouch *touch in touches)
        punto = [touch locationInView:self.view];
    
    figura = [[ViewFigura alloc] initWithFrame:self.view.frame];
    [figura initFiguraWithOrigenX:punto.x y:punto.y];
    
    [self.view addSubview:figura];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
