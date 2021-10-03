package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_263:String = "WE_CHILD_RESIZED";
      
      public static const const_1285:String = "WE_CLOSE";
      
      public static const const_1209:String = "WE_DESTROY";
      
      public static const const_149:String = "WE_CHANGE";
      
      public static const const_1187:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1576:String = "WE_PARENT_RESIZE";
      
      public static const const_95:String = "WE_UPDATE";
      
      public static const const_1263:String = "WE_MAXIMIZE";
      
      public static const const_436:String = "WE_DESTROYED";
      
      public static const const_872:String = "WE_UNSELECT";
      
      public static const const_1359:String = "WE_MAXIMIZED";
      
      public static const const_1592:String = "WE_UNLOCKED";
      
      public static const const_435:String = "WE_CHILD_REMOVED";
      
      public static const const_155:String = "WE_OK";
      
      public static const const_45:String = "WE_RESIZED";
      
      public static const const_1319:String = "WE_ACTIVATE";
      
      public static const const_260:String = "WE_ENABLED";
      
      public static const const_371:String = "WE_CHILD_RELOCATED";
      
      public static const const_1193:String = "WE_CREATE";
      
      public static const const_577:String = "WE_SELECT";
      
      public static const const_177:String = "";
      
      public static const const_1474:String = "WE_LOCKED";
      
      public static const const_1568:String = "WE_PARENT_RELOCATE";
      
      public static const const_1494:String = "WE_CHILD_REMOVE";
      
      public static const const_1486:String = "WE_CHILD_RELOCATE";
      
      public static const const_1618:String = "WE_LOCK";
      
      public static const const_223:String = "WE_FOCUSED";
      
      public static const const_708:String = "WE_UNSELECTED";
      
      public static const const_900:String = "WE_DEACTIVATED";
      
      public static const const_1238:String = "WE_MINIMIZED";
      
      public static const const_1553:String = "WE_ARRANGED";
      
      public static const const_1538:String = "WE_UNLOCK";
      
      public static const const_1622:String = "WE_ATTACH";
      
      public static const const_1350:String = "WE_OPEN";
      
      public static const const_1212:String = "WE_RESTORE";
      
      public static const const_1610:String = "WE_PARENT_RELOCATED";
      
      public static const const_1284:String = "WE_RELOCATE";
      
      public static const const_1605:String = "WE_CHILD_RESIZE";
      
      public static const const_1472:String = "WE_ARRANGE";
      
      public static const const_1351:String = "WE_OPENED";
      
      public static const const_1347:String = "WE_CLOSED";
      
      public static const const_1614:String = "WE_DETACHED";
      
      public static const const_1602:String = "WE_UPDATED";
      
      public static const const_1381:String = "WE_UNFOCUSED";
      
      public static const const_363:String = "WE_RELOCATED";
      
      public static const const_1396:String = "WE_DEACTIVATE";
      
      public static const const_229:String = "WE_DISABLED";
      
      public static const const_647:String = "WE_CANCEL";
      
      public static const const_682:String = "WE_ENABLE";
      
      public static const const_1222:String = "WE_ACTIVATED";
      
      public static const const_1375:String = "WE_FOCUS";
      
      public static const const_1570:String = "WE_DETACH";
      
      public static const const_1363:String = "WE_RESTORED";
      
      public static const const_1289:String = "WE_UNFOCUS";
      
      public static const const_56:String = "WE_SELECTED";
      
      public static const const_1327:String = "WE_PARENT_RESIZED";
      
      public static const const_1318:String = "WE_CREATED";
      
      public static const const_1521:String = "WE_ATTACHED";
      
      public static const const_1186:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1614:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1395:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1614 = param3;
         var_1395 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1395;
      }
      
      public function get related() : IWindow
      {
         return var_1614;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1395 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
