# VBSUnit

A minimalist VBScript Unit Testing framework. Yes, it is VBScript ;)

## Motivation

The importance of TDD (Test Driven Development) like a method to make the code more maintainable and flexible is now unquestionable. 
But I'm not found in open source world a productive way to do TDD with VBScript. Exists some initiatives that run 
in browser using Classic ASP platform but I think that way is too slow. Then I mixed the ideas from others minimalists 
testing frameworks and I made this simple tool to help to create vbscript code using TDD in a more productive way.

I hope you enjoy it!

## Getting started

Make a clone or download this project to your computer.
Open the DOS prompt and go to the vbsunit directory.
Now just type the command below: 

    cscript vbsunit.wsf examples\fizzbuzz.vbs

You'll see in the prompt the follow result:

    .....

    5 assertions, 0 failures, 0 errors.

Now you can open the fizzbuzz example or the others and you'll see the simplicity 
of the framework that contain just 5 procedures to facilitate your tests:

    assert_equal expected, actual, message 
    assert_not_equal expected, actual, message
    assert_match expected_pattern, actual, message  'regex
    assert_true asserted, message
    assert_false asserted, message
	
You can do now some changes in the examples to see the results or you can create your own
test file to your code in vbscript from scratch. 

Good Job!

## Configuration

VBSUnit was done to be executed in cscript mode (DOS). Not in Wscript mode (Windows).
Then if the script don't execute in DOS, you should change the default script host to CScript.exe:

1. open the DOS prompt in administration mode
2. type the following command: `cscript //H:CScript`

## Instalation

If you want to use vbsunit like a native command in DOS
copy the file `vbsunit.wsf` and the entire `libs` folder to 
the `c:\windows\system32` folder.
The fizzbuzz example is now as follows:

    vbsunit examples\fizzbuzz.vbs

Simply Fantastic!  :)

## Compatibility

I made this framework using Windows 7 professional - service pack 1
I wait your reply to know the compatibility with other windows versions.

## License

VBSUnit is released under the [MIT license](http://www.opensource.org/licenses/mit-license.php).

## Author 

Valério Farias ([valeriofarias.com](http://www.valeriofarias.com) and [twitter.com/valeriofarias](http://twitter.com/valeriofarias))
