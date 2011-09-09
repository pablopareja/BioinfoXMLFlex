package com.era7.bioinfo.xml.metagenomics
{
	import com.era7.xmlapi.model.XMLError;
	import com.era7.xmlapi.model.XMLObject;
	
	public class ReadResult extends XMLObject
	{
		
		public static const TAG_NAME:String = "read_result";
		
		public static const READ_ID_TAG_NAME:String = "read_id";
		public static const QUERY_LENGTH_TAG_NAME:String = "query_length";
		public static const HIT_LENGTH_TAG_NAME:String = "hit_length";
		public static const ALIGNMENT_LENGTH_TAG_NAME:String = "alignment_length";
		public static const IDENTITY_TAG_NAME:String = "identity";
		public static const EVALUE_TAG_NAME:String = "evalue";
		public static const QUERY_SEQUENCE_TAG_NAME:String = "query_sequence";
		public static const HIT_SEQUENCE_TAG_NAME:String = "hit_sequence";
		public static const MIDLINE_TAG_NAME:String = "midline";
		public static const GI_ID_TAG_NAME:String = "gi_id";
		
		/**
		 * CONSTRUCTOR
		 */
		public function ReadResult(... args)
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
		public function set readId(value:String):void{	setTagText(READ_ID_TAG_NAME,value);}
		[Bindable]
		public function set queryLength(value:int):void{	setTagText(QUERY_LENGTH_TAG_NAME,""+value);}
		[Bindable]
		public function set hitLength(value:int):void{	setTagText(HIT_LENGTH_TAG_NAME,""+value);}
		[Bindable]
		public function set alignmentLength(value:int):void{	setTagText(ALIGNMENT_LENGTH_TAG_NAME,""+value);}
		[Bindable]
		public function set identity(value:int):void{	setTagText(IDENTITY_TAG_NAME,""+value);}
		[Bindable]
		public function set evalue(value:String):void{	setTagText(EVALUE_TAG_NAME,value);}
		[Bindable]
		public function set querySequence(value:String):void{	setTagText(QUERY_SEQUENCE_TAG_NAME,value);}
		[Bindable]
		public function set hitSequence(value:String):void{	setTagText(HIT_SEQUENCE_TAG_NAME,value);}
		[Bindable]
		public function set midline(value:String):void{	setTagText(MIDLINE_TAG_NAME,value);}
		[Bindable]
		public function set giId(value:String):void{	setTagText(GI_ID_TAG_NAME,value);}
		
		
		//---------------------------------GETTERS------------------------------------
		public function get readId():String{	return getTagText(READ_ID_TAG_NAME);}
		public function get queryLength():int{	return parseInt(getTagText(QUERY_LENGTH_TAG_NAME));}
		public function get hitLength():int{	return parseInt(getTagText(HIT_LENGTH_TAG_NAME));}
		public function get alignmentLength():int{	return parseInt(getTagText(ALIGNMENT_LENGTH_TAG_NAME));}
		public function get identity():int{	return parseInt(getTagText(IDENTITY_TAG_NAME));}	
		public function get evalue():String{	return getTagText(EVALUE_TAG_NAME);}
		public function get querySequence():String{	return getTagText(QUERY_SEQUENCE_TAG_NAME);}
		public function get hitSequence():String{	return getTagText(HIT_SEQUENCE_TAG_NAME);}
		public function get midline():String{	return getTagText(MIDLINE_TAG_NAME);}
		public function get giId():String{	return getTagText(GI_ID_TAG_NAME);}
		
	}
}