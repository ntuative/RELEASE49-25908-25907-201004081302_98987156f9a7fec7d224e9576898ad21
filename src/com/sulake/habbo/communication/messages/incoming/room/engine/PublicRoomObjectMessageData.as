package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var var_954:int = 0;
      
      private var var_80:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_185:Boolean = false;
      
      private var var_236:int = 0;
      
      private var _type:String = "";
      
      private var _name:String = "";
      
      private var var_79:Number = 0;
      
      private var var_955:int = 0;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_185)
         {
            var_80 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_954;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get dir() : int
      {
         return var_236;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         if(!var_185)
         {
            _name = param1;
         }
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_185)
         {
            var_236 = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_185)
         {
            _y = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_185 = true;
      }
      
      public function get z() : Number
      {
         return var_80;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_185)
         {
            var_954 = param1;
         }
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_185)
         {
            var_955 = param1;
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
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         if(!var_185)
         {
            _type = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_955;
      }
   }
}
