package com.era7.bioinfo.xml.go
{
	import com.era7.xmlapi.model.XMLError;
	import com.era7.xmlapi.model.XMLObject;
	
	public class SlimSet extends XMLObject
	{
		
		public static const TAG_NAME:String = "slim_set";
		
		public static const ID_TAG_NAME:String = "id";
		public static const NAME_TAG_NAME:String = "name";
		
		
		/**
		 * CONSTRUCTOR
		 */
		public function SlimSet(... args)
		{	
			var temp:Object;
			var proceed:Boolean = false;			
			
			if(args.length == 0){
				temp = new XML(<{TAG_NAME}/>);
				proceed = true;
			}else if(args.length == 1){
				temp = args[0];
				proceed = true;
			}else{
				proceed = false;
			}
			
			if(proceed){
				super(temp);
				
				if(this.content.name() != TAG_NAME){
					throw new XMLError(XMLError.WRONG_TAG_NAME_ERROR);
				}				
				
			}else{
				throw new XMLError(XMLError.TOO_MANY_PARAMETERS_FOR_THE_CONSTRUCTOR);
			}
		}	
		
		//---------------------------------SETTERS------------------------------------
		[Bindable]
		public function set id(value:String):void{	setTagText(ID_TAG_NAME,value);}
		[Bindable]
		public function set name(value:String):void{	setTagText(NAME_TAG_NAME,value);} 		
		
		//---------------------------------GETTERS------------------------------------
		public function get id():String{	return getTagText(ID_TAG_NAME);}
		public function get name():String{	return getTagText(NAME_TAG_NAME);}
		
	}
}