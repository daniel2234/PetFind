//
//  DetailViewController.m
//  PetFind

//
//  Created by Daniel Kwiatkowski on 2015-06-03.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import "DetailViewController.h"
#import "Pet.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *attributionText;




@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.imageView.image = [UIImage imageNamed:self.pet.image];
    self.attributionText.text = self.pet.attribution;
    self.title = self.pet.title;
    
}




@end
