# SQFix
How to Use:
Download the .exe file, unzip it (if necessary), and double click to run. As a security precaution, Windows will pop up a message asking if you really want to run the program. Click the "More Info" link in the top left, then click "Run anyway." You won't be prompted on further launches.

Description:
  This is an advanced Auto Hotkey program I developed to provide a set of intuitive keyboard shortcuts for a company website designed by people who don't believe in efficiency. To maintain compatibailty and reduce system footprint, it does this mainly through keyboard emulation (a common way for this program to select text is to use the CTRL+F shortcut, for example).
  
  There are multiple categories of scripts. Some of the most used ones are simply for activating buttons (opening a ticket log, checking a zone schedule, creating a service order, etc). These will almost all use the alt modifier ("!", in AHK syntax), in conjunction with a thoughtful letter (T for ticket logs, Z for zone schedule, etc), to execute that function. In many cases, these shortcuts provide an efficiency boost of more than 500% when compared to using the default webpage. 
  
  In all cases, the keybindings are designed to make the keyboard more efficient to use with one hand (namely the left hand) while using a mouse in the other (right) hand.
  
  Also included are other scripts to do various odd tasks on the website or in general. Some simple ones include Ctrl+Win+V to both paste the clipboard and copy the current selection into your clipboard for later pasting (this is used primarily to swap the contents of two input fields that were populated incorrectly).
  
  The main rebindings of note are Caps Lock to Return and Tilda to Backspace (in both cases, the goal is to provide the remapped functionality to the left hand instead of the right).
  
  The vast majority of this program consists of text replacement, or "hotstrings" as AHK calls them. The purpose of this should be obvious: to allow a discerning user to type less and accomplish more. Consistently using these hotstrings allows the user to increase their typing speed by more than 10x in some cases.


Bragging points:

  * Separate functions for commonly used sequences or actions; DRY
  * Creative use of built-in Windows functionality to accomplish complicated tasks, meaning these scripts will work on any Windows PC; KISS
  * Separating functionality off into discreet files to increase legibility
