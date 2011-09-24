//
//  NoteViewController.m
//  Notez
//
//  Created by James Cryer on 23/09/2011.
//  Copyright 2011 Home. All rights reserved.
//

#import "NoteViewController.h"
#import "NoteListViewController.h"


@implementation NoteViewController

@synthesize titleField, body, parentController, note;


- (id)initWithParentController:(NoteListViewController *)aParentController note:(NSManagedObject *)aNote {

	self = [super init];
	
	if (self) {
		self.parentController = aParentController;
		self.note             = aNote;
	}
	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	if (note) {
		titleField.text = [note valueForKey:@"title"];
		body.text       = [note valueForKey:@"body"];
	}else {
		body.text = @"Type text here ...";
	}
}

- (void)save:(UIButton *)sender {
	
	if (parentController) {
		if (note) {
			[note setValue:titleField.text forKey:@"title"];
			[note setValue:body.text forKey:@"body"];
			[parentController saveContext];
		}
		else {
			[parentController insertNoteWithTitle:titleField.text andBody:body.text];
		}
	}
	[self dismissModalViewControllerAnimated:YES];
}

- (void)cancel:(UIButton *)cancel {
	[self dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[parentController release];
	[note release];
    [super dealloc];
}


@end
