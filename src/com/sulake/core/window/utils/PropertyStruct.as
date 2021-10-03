package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_690:String = "Rectangle";
      
      public static const const_57:String = "Boolean";
      
      public static const const_502:String = "Number";
      
      public static const const_63:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_566:String = "Point";
      
      public static const const_800:String = "Array";
      
      public static const const_833:String = "uint";
      
      public static const const_354:String = "hex";
      
      public static const const_1011:String = "Map";
       
      
      private var var_583:String;
      
      private var var_166:Object;
      
      private var var_2308:Boolean;
      
      private var _type:String;
      
      private var var_1886:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_583 = param1;
         var_166 = param2;
         _type = param3;
         var_1886 = param4;
         var_2308 = param3 == const_1011 || param3 == const_800 || param3 == const_566 || param3 == const_690;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_354:
               return "0x" + uint(var_166).toString(16);
            case const_57:
               return Boolean(var_166) == true ? "true" : "false";
            case const_566:
               return "Point(" + Point(var_166).x + ", " + Point(var_166).y + ")";
            case const_690:
               return "Rectangle(" + Rectangle(var_166).x + ", " + Rectangle(var_166).y + ", " + Rectangle(var_166).width + ", " + Rectangle(var_166).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_1011:
               _loc3_ = var_166 as Map;
               _loc1_ = "<var key=\"" + var_583 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_800:
               _loc4_ = var_166 as Array;
               _loc1_ = "<var key=\"" + var_583 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_566:
               _loc5_ = var_166 as Point;
               _loc1_ = "<var key=\"" + var_583 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_63 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_63 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_690:
               _loc6_ = var_166 as Rectangle;
               _loc1_ = "<var key=\"" + var_583 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_63 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_63 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_63 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_63 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_354:
               _loc1_ = "<var key=\"" + var_583 + "\" value=\"" + "0x" + uint(var_166).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_583 + "\" value=\"" + var_166 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_166;
      }
      
      public function get valid() : Boolean
      {
         return var_1886;
      }
      
      public function get key() : String
      {
         return var_583;
      }
   }
}
