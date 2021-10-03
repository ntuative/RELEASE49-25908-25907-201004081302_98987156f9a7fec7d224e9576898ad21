package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1144:String = "WN_CREATED";
      
      public static const const_815:String = "WN_DISABLE";
      
      public static const const_981:String = "WN_DEACTIVATED";
      
      public static const const_1003:String = "WN_OPENED";
      
      public static const const_979:String = "WN_CLOSED";
      
      public static const const_843:String = "WN_DESTROY";
      
      public static const const_1453:String = "WN_ARRANGED";
      
      public static const const_361:String = "WN_PARENT_RESIZED";
      
      public static const const_812:String = "WN_ENABLE";
      
      public static const const_1008:String = "WN_RELOCATE";
      
      public static const const_969:String = "WN_FOCUS";
      
      public static const const_834:String = "WN_PARENT_RELOCATED";
      
      public static const const_470:String = "WN_PARAM_UPDATED";
      
      public static const const_672:String = "WN_PARENT_ACTIVATED";
      
      public static const const_169:String = "WN_RESIZED";
      
      public static const const_1024:String = "WN_CLOSE";
      
      public static const const_998:String = "WN_PARENT_REMOVED";
      
      public static const const_235:String = "WN_CHILD_RELOCATED";
      
      public static const const_537:String = "WN_ENABLED";
      
      public static const const_259:String = "WN_CHILD_RESIZED";
      
      public static const const_967:String = "WN_MINIMIZED";
      
      public static const const_545:String = "WN_DISABLED";
      
      public static const const_198:String = "WN_CHILD_ACTIVATED";
      
      public static const const_373:String = "WN_STATE_UPDATED";
      
      public static const const_705:String = "WN_UNSELECTED";
      
      public static const const_431:String = "WN_STYLE_UPDATED";
      
      public static const const_1585:String = "WN_UPDATE";
      
      public static const const_394:String = "WN_PARENT_ADDED";
      
      public static const const_632:String = "WN_RESIZE";
      
      public static const const_711:String = "WN_CHILD_REMOVED";
      
      public static const const_1627:String = "";
      
      public static const const_989:String = "WN_RESTORED";
      
      public static const const_301:String = "WN_SELECTED";
      
      public static const const_985:String = "WN_MINIMIZE";
      
      public static const const_902:String = "WN_FOCUSED";
      
      public static const const_1142:String = "WN_LOCK";
      
      public static const const_314:String = "WN_CHILD_ADDED";
      
      public static const const_909:String = "WN_UNFOCUSED";
      
      public static const const_416:String = "WN_RELOCATED";
      
      public static const const_953:String = "WN_DEACTIVATE";
      
      public static const const_1167:String = "WN_CRETAE";
      
      public static const const_875:String = "WN_RESTORE";
      
      public static const const_299:String = "WN_ACTVATED";
      
      public static const include:String = "WN_LOCKED";
      
      public static const const_385:String = "WN_SELECT";
      
      public static const const_869:String = "WN_MAXIMIZE";
      
      public static const const_912:String = "WN_OPEN";
      
      public static const const_595:String = "WN_UNSELECT";
      
      public static const const_1454:String = "WN_ARRANGE";
      
      public static const const_1251:String = "WN_UNLOCKED";
      
      public static const const_1583:String = "WN_UPDATED";
      
      public static const const_986:String = "WN_ACTIVATE";
      
      public static const const_1170:String = "WN_UNLOCK";
      
      public static const const_922:String = "WN_MAXIMIZED";
      
      public static const const_952:String = "WN_DESTROYED";
      
      public static const const_982:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1614,cancelable);
      }
   }
}
