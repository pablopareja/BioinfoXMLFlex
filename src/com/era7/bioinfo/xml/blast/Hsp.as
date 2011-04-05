package com.era7.bioinfo.xml.blast
{
	import com.era7.xmlapi.model.XMLError;
	import com.era7.xmlapi.model.XMLObject;
	
	public class Hsp extends XMLObject
	{
		
		public static const TAG_NAME:String = "Hsp";
		
		public static const NUM_TAG_NAME:String = "Hsp_num";		
		public static const BIT_SCORE_TAG_NAME:String = "Hsp_bit-score";
		public static const SCORE_TAG_NAME:String = "Hsp_score";
		public static const EVALUE_TAG_NAME:String = "Hsp_evalue";
		public static const QUERY_FROM_TAG_NAME:String = "Hsp_query-from";
		public static const QUERY_TO_TAG_NAME:String = "Hsp_query-to";
		public static const HIT_FROM_TAG_NAME:String = "Hsp_hit-from";
		public static const HIT_TO_TAG_NAME:String = "Hsp_hit-to";
		public static const HIT_FRAME_TAG_NAME:String = "Hsp_hit-frame";
		public static const QUERY_FRAME_TAG_NAME:String = "Hsp_query-frame";
		public static const IDENTITY_TAG_NAME:String = "Hsp_identity";
		public static const POSITIVE_TAG_NAME:String = "Hsp_positive";
		public static const GAPS_TAG_NAME:String = "Hsp_gaps";
		public static const ALIGN_LEN_NAME:String = "Hsp_align-len";
		public static const QSEQ_TAG_NAME:String = "Hsp_qseq";
		public static const HSEQ_TAG_NAME:String = "Hsp_hseq";
		public static const MIDLINE_TAG_NAME:String = "Hsp_midline";
		
		
		/**
		 * CONSTRUCTOR
		 */
		public function Hsp(... args)
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
		public function set num(value:String):void{	setTagText(NUM_TAG_NAME,value);}
		[Bindable]
		public function set bitScore(value:String):void{	setTagText(BIT_SCORE_TAG_NAME,value);}
		[Bindable]
		public function set score(value:String):void{	setTagText(SCORE_TAG_NAME,value);}
		[Bindable]
		public function set evalue(value:String):void{	setTagText(EVALUE_TAG_NAME,value);}
		[Bindable]
		public function set queryFrom(value:String):void{	setTagText(QUERY_FROM_TAG_NAME,value);}
		[Bindable]
		public function set queryTo(value:String):void{	setTagText(QUERY_TO_TAG_NAME,value);}
		[Bindable]
		public function set hitFrom(value:String):void{	setTagText(HIT_FROM_TAG_NAME,value);}
		[Bindable]
		public function set hitTo(value:String):void{	setTagText(HIT_TO_TAG_NAME,value);}
		[Bindable]
		public function set queryFrame(value:String):void{	setTagText(QUERY_FRAME_TAG_NAME,value);}
		[Bindable]
		public function set identity(value:String):void{	setTagText(IDENTITY_TAG_NAME,value);}
		[Bindable]
		public function set gaps(value:String):void{	setTagText(GAPS_TAG_NAME,value);}
		[Bindable]
		public function set positive(value:String):void{	setTagText(POSITIVE_TAG_NAME,value);}
		[Bindable]
		public function set alignLen(value:String):void{	setTagText(ALIGN_LEN_NAME,value);}
		[Bindable]
		public function set qSeq(value:String):void{	setTagText(QSEQ_TAG_NAME,value);}
		[Bindable]
		public function set hSeq(value:String):void{	setTagText(HSEQ_TAG_NAME,value);}
		[Bindable]
		public function set midline(value:String):void{	setTagText(MIDLINE_TAG_NAME,value);}
		
		//---------------------------------GETTERS------------------------------------
		public function get num():String{	return getTagText(NUM_TAG_NAME);}
		public function get bitScore():String{	return getTagText(BIT_SCORE_TAG_NAME);}
		public function get score():String{	return getTagText(SCORE_TAG_NAME);}
		public function get evalue():String{	return getTagText(EVALUE_TAG_NAME);}
		public function get queryFrom():String{	return getTagText(QUERY_FROM_TAG_NAME);}
		public function get queryTo():String{	return getTagText(QUERY_TO_TAG_NAME);}
		public function get hitFrom():String{	return getTagText(HIT_FROM_TAG_NAME);}
		public function get hitTo():String{	return getTagText(HIT_TO_TAG_NAME);}
		public function get queryFrame():String{	return getTagText(QUERY_FRAME_TAG_NAME);}
		public function get identity():String{	return getTagText(IDENTITY_TAG_NAME);}
		public function get gaps():String{	return getTagText(GAPS_TAG_NAME);}
		public function get positive():String{	return getTagText(POSITIVE_TAG_NAME);}
		public function get alignLen():String{	return getTagText(ALIGN_LEN_NAME);}
		public function get qSeq():String{	return getTagText(QSEQ_TAG_NAME);}
		public function get hSeq():String{	return getTagText(HSEQ_TAG_NAME);}
		public function get midline():String{	return getTagText(MIDLINE_TAG_NAME);}
		
		
		
		
	}
}