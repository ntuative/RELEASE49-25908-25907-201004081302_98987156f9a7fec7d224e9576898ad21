package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1214:String = "F";
      
      public static const const_958:String = "M";
       
      
      private var var_79:Number = 0;
      
      private var var_308:String = "";
      
      private var var_1666:int = 0;
      
      private var var_1668:String = "";
      
      private var var_1663:int = 0;
      
      private var var_1667:int = 0;
      
      private var var_1669:String = "";
      
      private var var_608:String = "";
      
      private var _id:int = 0;
      
      private var var_185:Boolean = false;
      
      private var var_236:int = 0;
      
      private var var_1664:String = "";
      
      private var _name:String = "";
      
      private var var_1665:int = 0;
      
      private var _y:Number = 0;
      
      private var var_80:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_236;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_185)
         {
            var_236 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_185)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1666;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_185)
         {
            var_1663 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1664;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_185)
         {
            var_1669 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_185)
         {
            var_1664 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_185)
         {
            var_1667 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_185)
         {
            var_308 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_185)
         {
            var_1666 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_185)
         {
            var_608 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1663;
      }
      
      public function get groupID() : String
      {
         return var_1669;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_185)
         {
            var_1665 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_185)
         {
            var_1668 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_185 = true;
      }
      
      public function get sex() : String
      {
         return var_608;
      }
      
      public function get figure() : String
      {
         return var_308;
      }
      
      public function get webID() : int
      {
         return var_1665;
      }
      
      public function get custom() : String
      {
         return var_1668;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_185)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_185)
         {
            var_80 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_185)
         {
            var_79 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1667;
      }
   }
}
