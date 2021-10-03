package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_527:ToolbarIconGroup;
      
      private var var_1085:Boolean = false;
      
      private var var_2191:String;
      
      private var var_813:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1083:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_31:String = "-1";
      
      private var var_94:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_747:String;
      
      private var var_2021:int;
      
      private var var_748:Timer;
      
      private var var_1579:Array;
      
      private var var_1084:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2337:Array;
      
      private var var_271:ToolbarBarMenuAnimator;
      
      private var var_435:ToolbarIconAnimator;
      
      private var var_623:Array;
      
      private var var_909:Array;
      
      private var var_910:String = "-1";
      
      private var var_2395:Boolean = true;
      
      private var var_1082:Array;
      
      private var var_1346:Timer;
      
      private var var_2192:int;
      
      private var var_79:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_623 = new Array();
         var_909 = new Array();
         var_2337 = new Array();
         var_1084 = new ToolbarIconBouncer(0.8,1);
         super();
         var_527 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_747 = param4;
         _events = param5;
         var_271 = param6;
         var_1346 = new Timer(40,40);
         var_1346.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_94 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_389,HabboWindowStyle.const_40,HabboWindowParam.const_41,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_94.background = true;
         var_94.mouseTreshold = 0;
         var_94.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_40,HabboWindowParam.const_40,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_94.addChild(_window);
         _window.addEventListener(WindowEvent.const_45,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1579[var_1082.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_2192;
      }
      
      public function get iconId() : String
      {
         return var_747;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_813 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_31 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_94 == null || _window == null)
         {
            return;
         }
         var_94.width = _window.width;
         var_94.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_79 = (0 - 0) / 2;
            _y = var_813 + (0 - 0) / 2;
         }
         else
         {
            var_79 = var_813 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_94.x = var_79;
         var_94.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_94 != null)
         {
            var_94.dispose();
            var_94 = null;
         }
         var_623 = null;
         var_909 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_271 = null;
         var_435 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_623.indexOf(param1) < 0)
         {
            var_623.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_909.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_1085)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_271)
               {
                  var_271.repositionWindow(var_747,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_58);
                  _loc4_.iconId = var_747;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_1083;
                  }
               }
               break;
            case WindowMouseEvent.const_30:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_910;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_623.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_909[var_623.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_1085 = param1;
         if(var_94 != null)
         {
            var_94.visible = var_1085;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_94 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_94.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_94.toolTipCaption = "${toolbar.icon.tooltip." + var_2191.toLowerCase() + "}";
         }
         var_94.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_271 != null)
         {
            var_271.animateWindowIn(this,param1,param2,var_747,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_435 != null && _window != null)
         {
            var_435.update(_window);
            if(var_435.hasNextState())
            {
               state = var_435.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1579 = new Array();
         var_1082 = new Array();
         var_2191 = param1.@id;
         var_2192 = int(param1.@window_offset_from_icon);
         var_2021 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_1083 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_910 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_1082.push(_loc5_.id);
               var_1579.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_1083 == "-1")
                  {
                     var_1083 = _loc5_.id;
                  }
                  if(var_910 == "-1")
                  {
                     var_910 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_31 = var_910;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_271 != null)
         {
            var_271.hideWindow(param1,param2,var_747,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_271 != null)
         {
            var_271.positionWindow(this,param1,param2,var_747,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_271 != null)
         {
            var_271.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_1085;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_1084 != null && _window != null)
         {
            var_1084.update();
            _window.y = var_1084.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_748 != null)
         {
            var_748.stop();
            var_748 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_1085)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_435 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_79,_y,_bitmapData);
            if(false)
            {
               var_748 = new Timer(_loc1_.timer);
               var_748.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_748.start();
            }
            if(_loc1_.bounce)
            {
               var_1084.reset(-7);
               var_1346.reset();
               var_1346.start();
            }
         }
         else
         {
            var_435 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_2021 + var_527.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_31);
      }
      
      public function get window() : IWindow
      {
         return var_94;
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_909[var_623.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_527;
      }
   }
}
