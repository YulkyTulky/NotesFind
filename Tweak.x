#import "NotesFind.h"

%hook ICNoteEditorViewController

- (void)viewDidAppear:(BOOL)arg1 {

    %orig;
    [self notesFind_addGestureRecognizer];

}

%new
- (void)notesFind_addGestureRecognizer {

	[[[[self navigationItem] customRightItem] valueForKey:@"_view"] addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(notesFind_gestureRecognizerDidFire)]];
}

%new
- (void)notesFind_gestureRecognizerDidFire {

	[self beginTextFinding];

}

%end