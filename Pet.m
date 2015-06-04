//
//  Pet.m
//  PetFind
//
//  Created by Daniel Kwiatkowski on 2015-06-03.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import "Pet.h"

@implementation Pet

+(id)petWithImage:(NSString*)image title:(NSString*)title attribution:(NSString*)attribution{
    Pet *pet = [[Pet alloc]init];
    pet.image = image;
    pet.title = title;
    pet.attribution = attribution;
    return pet;
}

@end
