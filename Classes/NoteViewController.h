//
//  NoteViewController.h
//  Notez
//
//  Created by James Cryer on 23/09/2011.
//  Copyright 2011 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class NoteListViewController;

@interface NoteViewController : UIViewController {
	UITextField *titleField;
	UITextView *body;
	NoteListViewController *parentController;
	NSManagedObject *note;
}

@property (nonatomic, retain) IBOutlet UITextField *titleField;
@property (nonatomic, retain) IBOutlet UITextView *body;
@property (nonatomic, retain) NoteListViewController *parentController;
@property (nonatomic, retain) NSManagedObject *note;

- (id)initWithParentController:(NoteListViewController *)aParentController note:(NSManagedObject *)aNote;

- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)cancel;

@end
