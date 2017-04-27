
 Samui 2.0 for GTK2+ and Metacity by SiMoNsAyS
 =============================================

 1.0 Overview
 2.0 Technical Details
 3.0 Get Your Hands Dirty
  3.1 Customizing Panels
  3.2 Player Controls
  3.3 Fonts
  3.4 Other Samui Skins
 4.0 Contact
 5.0 License / Agreement
 6.0 Misc Notes


 1.0 Overview

 I've been a former ubuntu user since about... 7/8 months ago (Breezy Badger), during this time I haven't found any theme fitting my taste.
 There are pretty good themes out there but none could fill the space that Win visual styles and customizing applications letf.
 After that conclusion I decided to make my try. First it was fantastic (http://www.deviantart.com/deviation/33626439/), now is the time for Samui.
 Samui 2.0 is a guiKit for Shapeshifter (Mac OS X) by Brian Zeitler, take the time to visit his site (http://www.pixelnetdesign.com/).

 2.0 Techinical Details

 This port to Gnome (GTK2+ and Metacity) was drafted on less than a week, after that, I've been testing it for the last 3 weeks to be sure no glitches were found.
 The base theme was 'Milk 2.1' from roberTO. You can find some notes from him at the end of this file.
 Resources used were Mac OS X screenshots with .png quality to be sure every color was exact. No images from other Samui themes were directly used.
 To make it look better or at least more similar to the original I've worked on some graphics you can find on the folder ~/.themes/Samui-2.0/gfx/

 3.0 Get Your Hands Dirty

 First you must do to make your desktop look exactly like in the preview is set the theme. Drag and drop the downloaded tar.gz archive onto the theme manager and choose Samui-2.0.
 If you want some wallpapers to 
 Your done, if you already downloaded the Samui-2.0 icon set it will be used too.
 To place minimize, maximize and close buttons on the left side (like Apple does), open gconf-editor, navigate to 'apps>metacity>general>button_layout', change the key to look like 'close,minimize,maximize:menu'.

  3.1 Panels

  Panel properties, set a size of 22px and locate it on the top. On background image navigate to ~/.themes/Samui-2.0/gfx/ and there choose the appropiate file depending on your screen resolution (it will usually be panel-bg-w1280.png or panel-bg-w1024.png).
  Then create a new shortcut to place it on the top-right side, command is 'gnome-search-tool' and ~/.themes/Samui-2.0/gfx/search-icon.png as icon.
  For the dock you can create a new panel at the bottom, size of 48px or 64px be sure to either use hide buttons or expand the panel all over the screen to make it look better.
  If you're already using the Samui-2.0 icon set jump to the next section.
  If not, you'll like to set a custom distributor logo. To do this browse to ~/.themes/Samui-2.0/gfx/ and there run 'toggle-distributor-logo'.
  If it didn't worked (it should), manually replace /usr/share/icons/hicolor/48x48/apps/distributor-logo.png with ~/.themes/Samui-2.0/gfx/distributor-logo.png.

  3.2 Player Controls

  Add to your top panel custom shortcuts, command 'xmms -r' (previous), 'xmms -t' (play) or 'xmms -f' (next). As icon, ~/.themes/Samui-2.0/gfx/pv.png, pl.png or nx.png.
  Your player controls are ready, if you are running Xgl+Compiz you'll need to preceed the command with 'XLIB_SKIP_ARGB_VISUALS=1' or if you don't use XMMS just find the appropiate command line for your player.

  3.3 Fonts

  Matching fonts for this theme are Lucida and Handel Gothic families. There's a nice tutorial on how to install Lucida on Ubuntu Dapper (http://www.supriyadisw.net/2006/04/mac-fonts-on-dapper-drake.html).
  
  3.4 Other Samui Skins

  The Samui Icon Set by me http://www.deviantart.com/view/35190573/
  The Samui Wallpapers by me http://www.deviantart.com/view/35241950/
  If you use Firefox or VLC, there are nice Samui skins from kavin to complete the linux guiKit (http://www.deviantart.com/deviation/32265453/).

 4.0 Contact

 If you're creating a site, working on a new program or want a logo for your company... and need a themer/skinner/iconist you can contact me at BioHaZaRD.iNC[at]gmail.com.
 I'm building an official blog (not available yet), for the moment you can take a look to some of my work at http://biohazardinc.deviantart.com/

 5.0 License / Agreement

 For personal use only. This means the contents of the file you've just downloaded can't be used on commercial software, re-distributed  or modified without the permission of Brian Zeitler and mine.
 The concept and the graphics present here were created by Brian except for the necessary adaptations to port it to linux.

 6.0 Misc Notes

 The theme scripting that this one was based is 'Milk 2.1', here are some original notes from the author, roberTO:

1;	No more Evolution crash :)

2;	PANELS AND TOOLBARS:
	#####################################################################################
	If you don't need panel BGs and Buttons, and(or) Toolbar BGs and Buttons,.... 
	please comment out the 9 and 10, or 9 or 10, line in gtkrc file!
	
	Like this:

		#include "panel.rc"
		#include "toolbar.rc"


3;	HANDLES:
	#####################################################################################
	If you dont need "ugly" toolbar handles, Please run: gnome-ui-properties, and check out the Detachable Toolbars...


4;	If you don't have X.org 6.8 or 6.8.1, and Shadows (xcompmgr), please comment out the 11th line in gtkrc, and uncoment the 12th line!!!

	Like this:
		#include "menu.rc"
		include "menu-noxorg.rc"


5;	GTK1 theme:
	GTK1 theme is Bluecurve!
	Only change the colors....
