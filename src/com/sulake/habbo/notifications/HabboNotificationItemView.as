package com.sulake.habbo.notifications
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.session.events.BadgeImageReadyEvent;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class HabboNotificationItemView implements IUpdateReceiver
   {
      
      private static const const_342:int = 0;
      
      private static const const_343:Number = 50;
      
      public static const const_593:int = 70;
      
      private static const const_752:int = 2;
      
      public static const const_465:int = 4;
      
      private static const const_751:int = 3;
      
      private static const const_419:int = 1;
       
      
      private var var_1142:Boolean = false;
      
      private var var_560:int;
      
      private var _window:IWindow;
      
      private var var_1413:int;
      
      private var var_390:Number;
      
      private var var_2258:Map;
      
      private var var_31:int;
      
      private var var_973:uint;
      
      private var var_1143:int;
      
      private var var_794:uint;
      
      private var var_391:Map;
      
      private var var_793:uint;
      
      private var var_211:HabboNotificationItem;
      
      private var var_195:IHabboToolbar;
      
      public function HabboNotificationItemView(param1:IAsset, param2:IHabboWindowManager, param3:Map, param4:Map, param5:IHabboToolbar)
      {
         super();
         var_2258 = param3;
         var_391 = param4;
         var _loc6_:XmlAsset = param1 as XmlAsset;
         if(_loc6_ == null)
         {
            return;
         }
         _window = ICoreWindowManager(param2).buildFromXML(_loc6_.content as XML,1);
         _window.tags.push("notificationview");
         _window.context.getDesktopWindow().addEventListener(WindowEvent.const_45,onRoomViewResized);
         _window.procedure = onWindowEvent;
         _window.blend = 0;
         _window.visible = false;
         var _loc7_:ITextWindow = IWindowContainer(_window).findChildByTag("notification_text") as ITextWindow;
         if(_loc7_ != null)
         {
            var_1143 = 0 - _loc7_.rectangle.bottom;
         }
         else
         {
            var_1143 = 15;
         }
         var_1413 = _window.height;
         var_560 = 4;
         var_390 = 0;
         var_31 = const_342;
         var_195 = param5;
      }
      
      private function startDisplay() : void
      {
         var_973 = 0;
         var_31 = const_752;
      }
      
      private function setNotificationText(param1:String) : void
      {
         var _loc2_:ITextWindow = IWindowContainer(_window).findChildByTag("notification_text") as ITextWindow;
         if(_loc2_ == null || param1 == null)
         {
            return;
         }
         _window.height = 0;
         _loc2_.text = param1;
         _loc2_.height = _loc2_.textHeight + var_1143;
         if(_window.height < var_1413)
         {
            _window.height = var_1413;
         }
      }
      
      private function startFadeIn() : void
      {
         var_794 = 0;
         var_31 = const_419;
         _window.visible = true;
      }
      
      private function setNotificationIcon(param1:BitmapData) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:IBitmapWrapperWindow = IWindowContainer(_window).findChildByTag("notification_icon") as IBitmapWrapperWindow;
         if(_loc2_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            _loc2_.bitmap = null;
            return;
         }
         if(param1.width < _loc2_.width && param1.height < _loc2_.height)
         {
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc5_ = (_loc2_.width - param1.width) / 2;
            _loc6_ = (_loc2_.height - param1.height) / 2;
            _loc3_.copyPixels(param1,param1.rect,new Point(_loc5_,_loc6_));
         }
         else if(param1.width < param1.height)
         {
            _loc3_ = new BitmapData(param1.height,param1.height,true,0);
            _loc4_ = (param1.height * _loc2_.width - param1.width * _loc2_.width) / 2 / _loc2_.width;
            _loc3_.copyPixels(param1,param1.rect,new Point(_loc4_,0));
         }
         else if(param1.width > param1.height)
         {
            _loc3_ = new BitmapData(param1.width,param1.width,true,0);
            _loc4_ = (param1.width * _loc2_.height - param1.height * _loc2_.height) / 2 / _loc2_.height;
            _loc3_.copyPixels(param1,param1.rect,new Point(0,_loc4_));
         }
         else
         {
            _loc3_ = new BitmapData(param1.width,param1.height);
            _loc3_.copyPixels(param1,param1.rect,new Point(0,0));
         }
         _loc2_.bitmap = _loc3_;
      }
      
      private function startFadeOut() : void
      {
         var_793 = 0;
         var_31 = const_751;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         switch(var_31)
         {
            case const_342:
               break;
            case const_419:
               var_794 += param1;
               _loc2_ = Number(var_794) / Number(var_391["time_fade_in"]);
               if(var_794 > int(var_391["time_fade_in"]))
               {
                  startDisplay();
               }
               adjustBlend(_loc2_);
               break;
            case const_752:
               var_973 += param1;
               if(var_973 > int(var_391["time_display"]) && !var_1142)
               {
                  startFadeOut();
               }
               break;
            case const_751:
               var_793 += param1;
               _loc3_ = 1 - Number(var_793) / Number(var_391["time_fade_out"]);
               adjustBlend(_loc3_);
               if(var_793 > int(var_391["time_fade_in"]))
               {
                  startIdling();
               }
         }
      }
      
      private function startIdling() : void
      {
         var_31 = const_342;
         _window.visible = false;
      }
      
      public function reposition(param1:int = -1) : void
      {
         if(_window == null)
         {
            return;
         }
         if(var_195 == null)
         {
            return;
         }
         var _loc2_:IDesktopWindow = _window.context.getDesktopWindow();
         if(_loc2_ == null)
         {
            return;
         }
         if(param1 != -1)
         {
            var_560 = param1;
         }
         var _loc3_:int = var_195.orientation == "TOP" ? int(const_343) : 0;
         var _loc4_:int = var_195.orientation == "BOTTOM" ? int(_loc2_.height - const_343) : int(_loc2_.height);
         var _loc5_:int = var_195.orientation == "LEFT" ? int(const_343) : 0;
         var _loc6_:int = var_195.orientation == "RIGHT" ? int(_loc2_.width - const_343) : int(_loc2_.width);
         if(false)
         {
            if(false)
            {
               _window.x = _loc5_ + const_465;
            }
            else
            {
               _window.x = _loc6_ - 0 - const_465;
            }
         }
         else if(false)
         {
            _window.x = _loc5_ + const_465;
         }
         else
         {
            _window.x = _loc6_ - 0 - const_465;
         }
         if(false)
         {
            if(false)
            {
               _window.y = _loc3_ + var_560;
            }
            else
            {
               _window.y = _loc4_ - 0 - var_560;
            }
         }
         else if(false)
         {
            _window.y = _loc3_ + var_560;
         }
         else
         {
            _window.y = _loc4_ - 0 - var_560;
         }
      }
      
      public function onWindowEvent(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            var_1142 = true;
            Logger.log("notifications - hover on");
         }
         else if(param1.type == WindowMouseEvent.const_30)
         {
            var_1142 = false;
            Logger.log("notifications - hover off");
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            if(var_211 != null)
            {
               var_211.ExecuteUiLinks();
            }
         }
      }
      
      public function replaceIcon(param1:BadgeImageReadyEvent) : void
      {
         if(param1.badgeId != var_211.style.iconSrc)
         {
            return;
         }
         if(param1.badgeImage != null)
         {
            setNotificationIcon(param1.badgeImage);
         }
      }
      
      private function onRoomViewResized(param1:WindowEvent) : void
      {
         reposition();
      }
      
      public function get ready() : Boolean
      {
         return var_31 == const_342;
      }
      
      public function get disposed() : Boolean
      {
         return _window == null;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
      }
      
      public function showItem(param1:HabboNotificationItem) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:String = param1.content;
         setNotificationText(_loc2_);
         var _loc3_:BitmapData = param1.style.icon;
         setNotificationIcon(_loc3_);
         var_211 = param1;
         reposition();
         startFadeIn();
      }
      
      private function adjustBlend(param1:Number) : void
      {
         var_390 = param1;
         if(var_390 > 1)
         {
            var_390 = 1;
         }
         if(var_390 < 0)
         {
            var_390 = 0;
         }
         _window.blend = var_390;
      }
      
      public function get verticalPosition() : int
      {
         return var_560;
      }
   }
}
