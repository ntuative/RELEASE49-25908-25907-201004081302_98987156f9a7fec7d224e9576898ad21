package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_657;
         param1["bitmap"] = const_718;
         param1["border"] = const_741;
         param1["border_notify"] = const_1143;
         param1["button"] = const_434;
         param1["button_thick"] = const_654;
         param1["button_icon"] = const_1198;
         param1["button_group_left"] = const_628;
         param1["button_group_center"] = const_641;
         param1["button_group_right"] = const_650;
         param1["canvas"] = const_507;
         param1["checkbox"] = const_676;
         param1["closebutton"] = const_803;
         param1["container"] = const_300;
         param1["container_button"] = const_699;
         param1["display_object_wrapper"] = const_673;
         param1["dropmenu"] = const_377;
         param1["dropmenu_item"] = const_444;
         param1["frame"] = const_307;
         param1["frame_notify"] = const_1372;
         param1["header"] = const_547;
         param1["icon"] = const_934;
         param1["itemgrid"] = const_861;
         param1["itemgrid_horizontal"] = const_452;
         param1["itemgrid_vertical"] = const_631;
         param1["itemlist"] = const_862;
         param1["itemlist_horizontal"] = const_326;
         param1["itemlist_vertical"] = const_305;
         param1["maximizebox"] = const_1219;
         param1["menu"] = const_1203;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_925;
         param1["minimizebox"] = const_1293;
         param1["notify"] = const_1156;
         param1["null"] = const_535;
         param1["password"] = const_516;
         param1["radiobutton"] = const_627;
         param1["region"] = const_389;
         param1["restorebox"] = const_1376;
         param1["scaler"] = const_663;
         param1["scaler_horizontal"] = const_1183;
         param1["scaler_vertical"] = const_1259;
         param1["scrollbar_horizontal"] = const_414;
         param1["scrollbar_vertical"] = const_523;
         param1["scrollbar_slider_button_up"] = const_881;
         param1["scrollbar_slider_button_down"] = const_935;
         param1["scrollbar_slider_button_left"] = const_889;
         param1["scrollbar_slider_button_right"] = const_910;
         param1["scrollbar_slider_bar_horizontal"] = const_992;
         param1["scrollbar_slider_bar_vertical"] = const_966;
         param1["scrollbar_slider_track_horizontal"] = const_915;
         param1["scrollbar_slider_track_vertical"] = const_916;
         param1["scrollable_itemlist"] = const_1310;
         param1["scrollable_itemlist_vertical"] = const_396;
         param1["scrollable_itemlist_horizontal"] = const_974;
         param1["selector"] = const_538;
         param1["selector_list"] = const_515;
         param1["submenu"] = const_925;
         param1["tab_button"] = const_712;
         param1["tab_container_button"] = const_853;
         param1["tab_context"] = const_411;
         param1["tab_content"] = const_996;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_543;
         param1["input"] = const_715;
         param1["toolbar"] = const_1165;
         param1["tooltip"] = const_315;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
