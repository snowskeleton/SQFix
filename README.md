# SQFix
To use any these scripts, download the .exe file, unzip it (if necessary), and double click to run. Windows will pop up a message asking if you really want to run the program. Click the "More Info" link in the top left, then click "Run anyway." You won't be prompted on further launches.

  This is a semi-advanced Auto Hotkey program that I have developed over the course of the past year or so. The purpose is to provide a set of intuitive keyboard shortcuts for a company website designed by people who don't believe in efficiency.
  
  There are multiple categories of scripts. Some of the most used ones are simply for clicking buttons (opening a ticket log, checking a zone schedule, creating a service order, etc). These will almost all use the alt modifier ("!", in AHK terms), in conjunction with a thoughtful letter (T for ticket logs, Z for zone schedule, etc), to execute that function. In many cases, these shortcuts provide an efficiency boost of more than 500% when compared to using the default webpage. In all cases, the keybindings are designed to make the keyboard more efficient to use with one hand (namely the left hand) while using a mouse in the other.
  There are other scripts that do other various odd tasks on the website, or in general. Some simple ones include Ctrl+Win+V to both paste the clipboard and copy the current selection into your clipboard for later pasting (essentially replacing the selected text and clipboard text; very useful).
  The main rebindings of note are Caps Lock to Return, and Tilda to Backspace (in both cases, the goal is to provide the remapped functionality to the left hand instead of the right).
  
  The large majority of this program consists of text replacement. The purpose of this should be obvious: to allow a discerning user to type less and accomplish more. Wisely using text replacement (Hotstrings, as referred to in AHK) allows the worker to increase their typing speed by more than 10x in some common cases.


Features of note:

  * Functions for commonly used sequences; DRY
  * Creative use of built-in Windows functionality to accomplish complicated tasks, meaning these scripts will work on any Windows PC; KISS
  * Separating functionality off into discreet files to increase legibility
