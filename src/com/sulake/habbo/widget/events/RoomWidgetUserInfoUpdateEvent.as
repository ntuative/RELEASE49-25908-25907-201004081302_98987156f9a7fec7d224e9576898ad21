package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_207:String = "RWUIUE_PEER";
      
      public static const const_219:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1241:String = "BOT";
      
      public static const const_995:int = 2;
      
      public static const const_1345:int = 0;
      
      public static const const_961:int = 3;
       
      
      private var var_308:String = "";
      
      private var var_1301:String = "";
      
      private var var_2219:Boolean = false;
      
      private var var_1667:int = 0;
      
      private var var_2217:int = 0;
      
      private var var_2218:Boolean = false;
      
      private var var_1300:String = "";
      
      private var var_2222:Boolean = false;
      
      private var var_810:int = 0;
      
      private var var_2225:Boolean = true;
      
      private var var_1072:int = 0;
      
      private var var_2221:Boolean = false;
      
      private var var_1152:Boolean = false;
      
      private var var_2226:Boolean = false;
      
      private var var_2215:int = 0;
      
      private var var_2224:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_246:Array;
      
      private var var_1154:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1665:int = 0;
      
      private var var_2223:Boolean = false;
      
      private var var_2220:int = 0;
      
      private var var_2216:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_246 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_2217;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_2217 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2219;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2225;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2225 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2222 = param1;
      }
      
      public function get motto() : String
      {
         return var_1301;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2221 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1152;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1301 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2223;
      }
      
      public function get groupBadgeId() : String
      {
         return var_2216;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1152 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2224;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_2215 = param1;
      }
      
      public function get badges() : Array
      {
         return var_246;
      }
      
      public function get amIController() : Boolean
      {
         return var_2218;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2218 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2223 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2220 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_2216 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1300 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2222;
      }
      
      public function set figure(param1:String) : void
      {
         var_308 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_2215;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1154;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2221;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_810 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2220;
      }
      
      public function get realName() : String
      {
         return var_1300;
      }
      
      public function get figure() : String
      {
         return var_308;
      }
      
      public function set webID(param1:int) : void
      {
         var_1665 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_246 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2226 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2224 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_810;
      }
      
      public function get webID() : int
      {
         return var_1665;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1072 = param1;
      }
      
      public function get xp() : int
      {
         return var_1667;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2219 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1072;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2226;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1154 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1667 = param1;
      }
   }
}
