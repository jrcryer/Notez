//
//  PasswordViewController.m
//  Notez
//
//  Created by James Cryer on 24/09/2011.
//  Copyright 2011 Home. All rights reserved.
//

#import "PasswordViewController.h"
#import "PasswordListViewController.h"

@implementation PasswordViewController

@synthesize name, userId, password, parentController, system;

- (id)initWithParentController:(PasswordListViewController *)aParentController system:(NSManagedObject *)aSystem {

	self = [super init];
	
	if (self) {
		self.parentController = aParentController;
		self.system           = aSystem;
	}
	return self;
}

- (void)viewDidLoad {

	[super viewDidLoad];
	
	if (system) {
		name.text = [system valueForKey:@"name"];
		userId.text = [system valueForKey:@"userId"];
		password.text = [system valueForKey:@"password"];
	}
}

- (void)save:(id)sender {
	
	if (parentController) {
		if (system) {
			[system setValue:name.text forKey:@"name"];
			[system setValue:userId.text forKey:@"userId"];
			[system	setValue:password.text forKey:@"password"];
			[parentController saveContext];
		}
		else {
			[parentController insertPasswordWithName:name.text userId:userId.text password:password.text];
		}
	}
	[self dismissModalViewControllerAnimated:YES];
}

- (void)cancel:(id)sender {
	[self dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}


- (void)dealloc {
	[parentController release];
	[system release];
    [super dealloc];
}


@end
