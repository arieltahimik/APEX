// IN-LINE COMMENT
// TODO: Figure out how to comment. Start with me!
// You got this; you're building a solid foundation!
// URL: https://www.campapex.org/


/*
MULTILINE COMMENT 
This is a multline comment.
It wraps multiple lines!
*/


/**
* APEXDOC COMMENTS
* Used to document Salesforce Apex classes.
*
* @author Salesforce.com Foundation
* @date 2014
*
* @group Accounts
* @group-content ../../ApexDocContent/Accounts.htm
*
* @description Trigger Handler on Accounts that handles ensuring the correct system flags are set on
* our special accounts (Household, One-to-One), and also detects changes on Household Account that requires
* name updating.
*/
public with sharing class ACCT_Accounts_TDTM extends TDTM_Runnable {