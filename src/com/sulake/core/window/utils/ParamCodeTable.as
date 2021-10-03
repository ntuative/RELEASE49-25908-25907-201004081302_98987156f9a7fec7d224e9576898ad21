package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_131;
         param1["bound_to_parent_rect"] = const_85;
         param1["child_window"] = const_941;
         param1["embedded_controller"] = const_308;
         param1["resize_to_accommodate_children"] = const_64;
         param1["input_event_processor"] = const_47;
         param1["internal_event_handling"] = const_717;
         param1["mouse_dragging_target"] = const_233;
         param1["mouse_dragging_trigger"] = const_303;
         param1["mouse_scaling_target"] = const_247;
         param1["mouse_scaling_trigger"] = const_463;
         param1["horizontal_mouse_scaling_trigger"] = const_226;
         param1["vertical_mouse_scaling_trigger"] = const_224;
         param1["observe_parent_input_events"] = const_898;
         param1["optimize_region_to_layout_size"] = const_453;
         param1["parent_window"] = const_983;
         param1["relative_horizontal_scale_center"] = const_159;
         param1["relative_horizontal_scale_fixed"] = const_122;
         param1["relative_horizontal_scale_move"] = const_284;
         param1["relative_horizontal_scale_strech"] = const_274;
         param1["relative_scale_center"] = const_1018;
         param1["relative_scale_fixed"] = const_606;
         param1["relative_scale_move"] = const_1013;
         param1["relative_scale_strech"] = const_930;
         param1["relative_vertical_scale_center"] = const_170;
         param1["relative_vertical_scale_fixed"] = const_132;
         param1["relative_vertical_scale_move"] = const_285;
         param1["relative_vertical_scale_strech"] = const_262;
         param1["on_resize_align_left"] = const_576;
         param1["on_resize_align_right"] = const_457;
         param1["on_resize_align_center"] = const_406;
         param1["on_resize_align_top"] = const_652;
         param1["on_resize_align_bottom"] = const_391;
         param1["on_resize_align_middle"] = const_438;
         param1["on_accommodate_align_left"] = const_907;
         param1["on_accommodate_align_right"] = const_428;
         param1["on_accommodate_align_center"] = const_524;
         param1["on_accommodate_align_top"] = const_845;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_640;
         param1["route_input_events_to_parent"] = const_451;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_931;
         param1["scalable_with_mouse"] = const_804;
         param1["reflect_horizontal_resize_to_parent"] = const_378;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_243;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
