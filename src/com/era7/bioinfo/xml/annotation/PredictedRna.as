package com.era7.bioinfo.xml.annotation
{
	import com.era7.util.BooleanParser;
	import com.era7.xmlapi.model.XMLError;
	import com.era7.xmlapi.model.XMLObject;
	
	public class PredictedRna extends XMLObject
	{
		
		public static const TAG_NAME:String = "predicted_rna";
				
		public static const ID_TAG_NAME:String = "id";
		public static const LENGTH_TAG_NAME:String = "length";
		public static const START_POSITION_TAG_NAME:String = "start_position";
		public static const END_POSITION_TAG_NAME:String = "end_position";
		public static const STRAND_TAG_NAME:String = "strand";
		public static const EVALUE_TAG_NAME:String = "evalue";
		public static const HIT_DEF_TAG_NAME:String = "hit_def";
		public static const ANNOTATION_UNIPROT_ID_TAG_NAME:String = "annotation_uniprot_id";
		public static const SEQUENCE_TAG_NAME:String = "sequence";
		
		public static const CONTIG_ID_TAG_NAME:String = "contig_id";
		
		/**
		 * CONSTRUCTOR
		 */
		public function PredictedRna(... args)
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
		public function set startPosition(value:int):void{	setTagText(START_POSITION_TAG_NAME,""+value);}
		[Bindable]
		public function set endPosition(value:int):void{	setTagText(END_POSITION_TAG_NAME,""+value);}
		[Bindable]
		public function set strand(value:String):void{	setTagText(STRAND_TAG_NAME,value);}
		[Bindable]
		public function set hitDef(value:String):void{	setTagText(HIT_DEF_TAG_NAME,value);}
		[Bindable]
		public function set sequence(value:String):void{	setTagText(SEQUENCE_TAG_NAME,value);}
		[Bindable]
		public function set annotationUniprotId(value:String):void{	setTagText(ANNOTATION_UNIPROT_ID_TAG_NAME,value);}
		[Bindable]
		public function set length(value:int):void{	setTagText(LENGTH_TAG_NAME,""+value);}
		[Bindable]
		public function set evalue(value:String):void{	setTagText(EVALUE_TAG_NAME,value);}
		[Bindable]
		public function set contigId(value:String):void{	setTagText(CONTIG_ID_TAG_NAME,value);}
		
		
		//---------------------------------GETTERS------------------------------------
		public function get id():String{	return getTagText(ID_TAG_NAME);}
		public function get startPosition():int{	return parseInt(getTagText(START_POSITION_TAG_NAME));}
		public function get endPosition():int{	return parseInt(getTagText(END_POSITION_TAG_NAME));}
		public function get strand():String{	return getTagText(STRAND_TAG_NAME);}
		public function get hitDef():String{ return getTagText(HIT_DEF_TAG_NAME);}
		public function get sequence():String{ 	return getTagText(SEQUENCE_TAG_NAME);}
		public function get annotationUniprotId():String{	return getTagText(ANNOTATION_UNIPROT_ID_TAG_NAME);}
		public function get length():int{ return parseInt(getTagText(LENGTH_TAG_NAME));}
		public function get evalue():String{	return getTagText(EVALUE_TAG_NAME);}
		public function get contigId():String{	return getTagText(CONTIG_ID_TAG_NAME);}
		
	}
}