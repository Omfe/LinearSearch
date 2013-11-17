//
//  LSViewController.m
//  LinearSearch
//
//  Created by Omar Gudino on 11/13/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "LSViewController.h"

@interface LSViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textTextField;
@property (weak, nonatomic) IBOutlet UILabel *printLabel;

@end

@implementation LSViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	
}


- (IBAction)pushedButton:(id)sender {
    NSString *fullString = self.textTextField.text;
    NSString *myChar;
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:8];
    NSInteger binary[8];
    NSString *printString = @"";
    
    for (int i = 0; i<8; i++) {
        //En caso de que se quiera caracter por caracter
        myChar = [NSString stringWithFormat:@"%c", [fullString characterAtIndex:i]];
        [characters addObject:myChar];
        
        //simular los espacios vacios y ocupados
        if ([myChar  isEqual: @" "]) {
            binary[i] = 0;
        } else {
            binary[i] = 1;
        }
    }
    
    
    //Usar un bitwise operator en caso de que compare con otro arreglo de bits
    for (int i = 0; i<8; i++) {
        binary[i] = (binary[i] | 0);
    }
    
    //Imprimir el arreglo de 1's y 0's
    for (int i = 0; i<8; i++) {
        printString = [NSString stringWithFormat:@"%@%d", printString, binary[i]];
        
    }
    
    self.printLabel.text = printString;
    
    
}
@end