package com.sulake.habbo.avatar.head
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.common.AvatarEditorGridView;
   import com.sulake.habbo.avatar.common.CategoryBaseView;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryModel;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryView;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.utils.Dictionary;
   
   public class HeadView extends CategoryBaseView implements IAvatarEditorCategoryView
   {
       
      
      public function HeadView(param1:IAvatarEditorCategoryModel, param2:IHabboWindowManager, param3:IAssetLibrary)
      {
         super(param2,param3,param1);
      }
      
      public function switchCategory(param1:String) : void
      {
         if(_window == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         if(var_141 == param1)
         {
            return;
         }
         inactivateTab(var_43);
         switch(param1)
         {
            case FigureData.const_136:
               var_43 = "tab_hair";
               break;
            case FigureData.const_162:
               var_43 = "tab_hat";
               break;
            case FigureData.const_163:
               var_43 = "tab_accessories";
               break;
            case FigureData.const_174:
               var_43 = "tab_eyewear";
               break;
            case FigureData.const_166:
               var_43 = "tab_masks";
               break;
            default:
               throw new Error("[HeadView] Unknown item category: \"" + param1 + "\"");
         }
         var_141 = param1;
         activateTab(var_43);
         if(!var_160)
         {
            init();
         }
         updateGridView();
      }
      
      override public function init() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!_window)
         {
            _loc1_ = _assetLibrary.getAssetByName("avatareditor_head_base") as XmlAsset;
            if(_loc1_)
            {
               _window = IWindowContainer(_windowManager.buildFromXML(_loc1_.content as XML));
               _window.visible = false;
               _window.procedure = windowEventProc;
            }
         }
         if(!var_34)
         {
            var_34 = new Dictionary();
            var_34["null"] = new AvatarEditorGridView(_model,FigureData.const_136,_windowManager,_assetLibrary);
            var_34["null"] = new AvatarEditorGridView(_model,FigureData.const_162,_windowManager,_assetLibrary);
            var_34["null"] = new AvatarEditorGridView(_model,FigureData.const_163,_windowManager,_assetLibrary);
            var_34["null"] = new AvatarEditorGridView(_model,FigureData.const_174,_windowManager,_assetLibrary);
            var_34["null"] = new AvatarEditorGridView(_model,FigureData.const_166,_windowManager,_assetLibrary);
         }
         else
         {
            for each(_loc2_ in var_34)
            {
               _loc2_.initFromList();
            }
         }
         var_160 = true;
         attachImages();
         if(_model && var_141 == "")
         {
            _model.switchCategory(FigureData.const_136);
         }
      }
      
      private function windowEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            switch(param2.name)
            {
               case "tab_hair":
                  switchCategory(FigureData.const_136);
                  break;
               case "tab_hat":
                  switchCategory(FigureData.const_162);
                  break;
               case "tab_accessories":
                  switchCategory(FigureData.const_163);
                  break;
               case "tab_eyewear":
                  switchCategory(FigureData.const_174);
                  break;
               case "tab_masks":
                  switchCategory(FigureData.const_166);
            }
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            switch(param2.name)
            {
               case "tab_hair":
               case "tab_hat":
               case "tab_accessories":
               case "tab_eyewear":
               case "tab_masks":
                  activateTab(param2.name);
            }
         }
         else if(param1.type == WindowMouseEvent.const_30)
         {
            switch(param2.name)
            {
               case "tab_hair":
               case "tab_hat":
               case "tab_accessories":
               case "tab_eyewear":
               case "tab_masks":
                  if(var_43 != param2.name)
                  {
                     inactivateTab(param2.name);
                  }
            }
         }
      }
   }
}
