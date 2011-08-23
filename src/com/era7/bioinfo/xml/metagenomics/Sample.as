package com.era7.bioinfo.xml.metagenomics
{
	import com.era7.xmlapi.model.XMLError;
	import com.era7.xmlapi.model.XMLObject;

	public class Sample extends XMLObject
	{
		
		public static const TAG_NAME:String = "sample";
		
		public static const NAME_TAG_NAME:String = "name";
		
		/**
		 * CONSTRUCTOR
		 */
		public function Sample(... args)
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
		public function set name(value:String):void{	setTagText(NAME_TAG_NAME,value);}
		
		//---------------------------------GETTERS------------------------------------
		public function get name():String{	return getTagText(NAME_TAG_NAME);}
	}
}