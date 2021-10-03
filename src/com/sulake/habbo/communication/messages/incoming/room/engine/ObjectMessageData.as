package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_955:int = 0;
      
      private var _data:String = "";
      
      private var var_1552:int = -1;
      
      private var var_31:int = 0;
      
      private var _type:int = 0;
      
      private var var_954:int = 0;
      
      private var var_2380:String = "";
      
      private var var_1702:int = 0;
      
      private var _id:int = 0;
      
      private var var_185:Boolean = false;
      
      private var var_236:int = 0;
      
      private var var_1973:String = null;
      
      private var var_79:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_80:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_185)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_185)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_236;
      }
      
      public function get extra() : int
      {
         return var_1552;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_185)
         {
            var_236 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_185)
         {
            var_79 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_185)
         {
            var_1552 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_185)
         {
            var_31 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1702;
      }
      
      public function get staticClass() : String
      {
         return var_1973;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_185)
         {
            var_1702 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_185)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_185)
         {
            var_1973 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_185 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_185)
         {
            var_955 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_185)
         {
            var_954 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_185)
         {
            var_80 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_955;
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      public function get sizeY() : int
      {
         return var_954;
      }
   }
}
