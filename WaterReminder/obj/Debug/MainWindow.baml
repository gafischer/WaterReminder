   M S B A M L   `   `   `  ????H  DWaterReminder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:WaterReminder.PropertiesWaterReminder.Properties  5   	   -clr-namespace:WaterReminderWaterReminder  5   	       WaterReminder.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   _ [Hardcodet.NotifyIcon.Wpf, Version=1.1.0.0, Culture=neutral, PublicKeyToken=682384a853a08aad)tb http://www.hardcodet.net/taskbar  5   	   1prop&clr-namespace:WaterReminder.Properties  5   	   'localclr-namespace:WaterReminder  5   	   $	??215??5   	   $	??300??5   	   $y?Hidden=?5	   	     ? 	Resources  5
         validationErrorTemplate ?? Orientation ?? TextAlignment ? ToolTip ?? ElementName ?? Path ??Name??%%  &	        ?? 5   
   .R?5      ]? .+?5      ?? $ 
Horizontal=?6   $??Bottom=?5      .+?5      ? $??12??6   $??12??5      .+?5      A? $??12??6"   $??12??5   "   
???  ??$??Center=?5   "   $??Center=?5   "   6?   ?? 5      
???????$??Heavy"?5   $   $??8(?5   $   $??Center=?5   $   $??Center=?5   $   $ Center=?5   $    5   $   ?? $ ErrorAdorner??$8 2AdornedElement.(Validation.Errors)[0].ErrorContent?X5   U   5      ?? 5      
???  ??$
??Wrap=?5        $	??150??5!       $
??Auto??5"       $
??Bold"?5#       $??2,0,0,0q?5$       ??5%       ?? $ ErrorAdorner??$8 2AdornedElement.(Validation.Errors)[0].ErrorContent?5&   P   5'      ?? 5(      $ ErrorAdorner??6,   6D   5)      5*      5+      .??5,      ? '  !WaterReminder.Properties.Settings   Default ? DataContext# Z 6   .+?5-   
   3  -Hardcodet.Wpf.TaskbarNotification.TaskbarIcon  -   5        	  Name$	 SystemTrayWindow??5-      
   PopupActivation$
 LeftOrDoubleClick=?5.         
IconSource$ /Icons/water-bottle.ico??5/         ToolTipText$ Water Reminder??51       ? ContextMenu 52      ?? 53      .@?54      m? -   5        $??Exit!??54      55      56         	TrayPopup 58      ?? 59      $	??300??6   $	??230??5:      $??5,5,5,5q?5;       ?? CornerRadius$ 10,10,10,10??5<      $??2??5=       J? Effect 5>      3  -System.Windows.Media.Effects.DropShadowEffect  5?         Color$ 	#FF474747??6+   ??5A      ?? 5B       ?? EndPoint$ 0.5,1&?6.    ?? 
StartPoint$ 0.5,0&?5C   .   .??5D      ?  ? Color$ 	#FF58C2FF??6+    ? Offset$ 0Q?5E   +   ? 5F      $ 	#FFFFFFFF??6+   $ 1Q?5G   +   5H      ._?5J      ?? .+?5K      ?? $??0,20,0,0q?6$   $
??Wrap=?5L   $   $
??Auto??5M   $   $??Center=?5N   $   $	??Top=?5O   $   $??16(?5P   $   $
??Bold"?5Q   $   $ Center=?5R   $   ?? 5S   	   $?Remind Me To Drink??6   ?? 5T   	   ?? 5U   	   $?Water Every??6   5V      ?? 5W      -   5         ??Name$ 
txtMinutes??5W   "   $??0 0 0 2q?5X   "   
???   ?
?????? $??	5,10,5,10q?5[   "   $	??100??5\   "   $??24??5]   "    ?? TextAlignment$ Center=?5^   "    =? ErrorTemplate# [  5_   "   .??6f   ??5`      ?? 5a   "   $ RemindMinutes?6*    ?? ValidationRules 5b   &   )   #WaterReminder.MinutesValidationRule  5c   *   5e   #   .??5f   ,   5g      ?? 5h      
???????$??Segoe UI)?5k   $   $??8,2,8,3q?5l   $   $
??Wrap=?5m   $   $??Center=?5n   $   ??5h   $   ?? $ adorner??$( "AdornedElement.(Validation.Errors)?5n   $   ?? 5o      $??5,0,5,10q?6$   $
??Wrap=?5p   $   $
??Auto??5q   $   $??Center=?5r   $   $	??Top=?5s   $   $??16(?5t   $   $
??Bold"?5u   $   $ Center=?5v   $   ?? 5w   	   $?Minutes??6   5x      ?? 5y      -   5         ??Name$ 	btnRemind??5y   !   $??
Remind Me!??5z   !   $??5,0,5,10q?5{   !   $??Center=?5|   !   $??Center=?5}   !   5~   !   ?? 5      -   5        $ btnStop??5   !   $??Stop!??5?   !   $??5,0,5,10q?5?   !   $??Center=?5?   !   $??Center=?5?   !   5?   !   5?      5?      5?      5?      5?      