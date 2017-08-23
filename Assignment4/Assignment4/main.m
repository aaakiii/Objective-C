//
//  main.m
//  Assignment4
//
//  Created by 岡田暁 on 2017-08-21.
//  Copyright © 2017 岡田暁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"
#import "Contact.h"
#import "PhoneNumber.h"

ContactList *contactlist;
InputCollector *input;

Contact *NewContactCreate(){

    Contact *newContact = [Contact new];
    
    newContact.name =  [input inputForPrompt:@"What is your name?"];
    
    if([contactlist findDuplicate:newContact.name]){
        NSLog(@"The Contact Name is already used. Try again");
        return NULL;
    }
    
    newContact.email = [input inputForPrompt:@"What is your Email?"];
    
    NSString *phoneType = [input inputForPrompt:@"What is the Phone Type?"];
    NSString *phoneNum = [input inputForPrompt:@"PhoneNumber?"];
    [newContact addPhone:phoneType withNumber:phoneNum];
    
    [contactlist addContact:newContact];

    return newContact;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        

        contactlist = [ContactList new];
        input = [InputCollector new];
        NSMutableArray *history = [NSMutableArray array];
        
        Contact *c1 = [Contact new];
        c1.name = @"Momo";
        c1.email = @"momo@dummy.com";
        [c1 addPhone:@"Mobile" withNumber:@"000-000-000"];
        [c1 addPhone:@"Home" withNumber:@"111-111-111"];
        [contactlist addContact:c1];
        Contact *c2 = [Contact new];
        c2.name = @"Dylan";
        c2.email = @"dylan@dummy.com";
        [contactlist addContact:c2];
        
        while(true){
            NSString *menu = @"What would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\nshow -\nfind -\nhistory -";
            NSString *userInput = [input inputForPrompt:menu];
            if([userInput isEqual:@"quit"]) break;
            
            else if([userInput isEqual:@"new"]){
                NewContactCreate();

            }else if([userInput isEqual:@"list"]){
                [contactlist listAll];
            }else if([userInput isEqual:@"show"]){
                NSString *getInput = [input inputForPrompt:@"Input the ID"];
                Contact *result = [contactlist findById:getInput];
                if(result != NULL){
                    
                    NSLog(@"Name: %@\n", result.name);
                    NSLog(@"Email: %@\n", result.email);
                    for (PhoneNumber *phone in result.phones) {
                        NSLog(@"Phone (%@): %@\n", phone.label, phone.number);
                    }
                }else {
                    printf("Not found\n");
                }
                
            }else if([userInput isEqual:@"find"]){
                NSString *inputLine = [input inputForPrompt:@"Input keyword"];
                NSMutableArray *result = [contactlist search:inputLine];
                NSLog(@"%lu contact(s) found:\n", (long)result.count);
                
                for (int i = 0; i < result.count; i++) {
                    Contact *contact = result[i];
                    NSLog(@"%d: %@ <%@>\n", i, contact.name, contact.email);
                }
                
            }else if([userInput isEqual:@"history"]){
                int max = 3;
                for (int i = 0; i < history.count && i < max; i++) {
                    NSLog(@"\t- %@\n", history[history.count -1 -i]);
                }
            }
            if (userInput != NULL) {
                [history addObject:userInput];
            }
            
        }

    }
    return 0;
}
