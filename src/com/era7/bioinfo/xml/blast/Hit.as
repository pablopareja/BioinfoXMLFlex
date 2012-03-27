package com.era7.bioinfo.xml.blast
{
	import com.era7.xmlapi.model.XMLError;
	import com.era7.xmlapi.model.XMLObject;

	public class Hit extends XMLObject
	{
		
		public static const TAG_NAME:String = "Hit";
		
		public static const NUM_TAG_NAME:String = "Hit_num";		
		public static const ACCESSION_TAG_NAME:String = "Hit_accession";
		public static const ID_TAG_NAME:String = "Hit_id";
		public static const HIT_DEF_TAG_NAME:String = "Hit_def";
		public static const HIT_LEN_TAG_NAME:String = "Hit_len";
		
		
		/**
		 * CONSTRUCTOR
		 */
		public function Hit(... args)
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
		public function set num(value:int):void{	setTagText(NUM_TAG_NAME,"" + value);}
		[Bindable]
		public function set accession(value:String):void{	setTagText(ACCESSION_TAG_NAME,value);}
		[Bindable]
		public function set id(value:String):void{	setTagText(ID_TAG_NAME,value);}
		[Bindable]
		public function set len(value:int):void{	setTagText(HIT_LEN_TAG_NAME, "" + value);}
		[Bindable]
		public function set def(value:String):void{	setTagText(HIT_DEF_TAG_NAME, value);}
		
		//---------------------------------GETTERS------------------------------------
		public function get num():int{	return parseInt(getTagText(NUM_TAG_NAME));}
		public function get accession():String{	return getTagText(ACCESSION_TAG_NAME);}
		public function get id():String{	return getTagText(ID_TAG_NAME);}
		public function get len():int{	return parseInt(getTagText(HIT_LEN_TAG_NAME));}
		public function get def():String{	return getTagText(HIT_DEF_TAG_NAME);}
		
		
		
	}
}