package com.era7.bioinfo.xml.ncbi
{
	import com.era7.xmlapi.model.XMLError;
	import com.era7.xmlapi.model.XMLObject;

	public class NCBITaxonomyNode extends XMLObject
	{
		
		public static const TAG_NAME:String = "ncbi_taxonomy_node";
		
		public static const TAX_ID_TAG_NAME:String = "tax_id";
		public static const SCIENTIFIC_NAME_TAG_NAME:String = "scientific_name";
		public static const ABSOLUTE_FREQUENCY_TAG_NAME:String = "absolute_frequency";
		public static const ACCUMULATED_ABSOLUTE_FREQUENCY_TAG_NAME:String = "accumulated_absolute_frequency";
		
		
		/**
		 * CONSTRUCTOR
		 */
		public function NCBITaxonomyNode(... args)
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
		public function set taxId(value:String):void{	setTagText(TAX_ID_TAG_NAME,value);}
		[Bindable]
		public function set scientificName(value:String):void{	setTagText(SCIENTIFIC_NAME_TAG_NAME,value);}
		[Bindable]
		public function set absoluteFrequency(value:int):void{	setTagText(ABSOLUTE_FREQUENCY_TAG_NAME,""+value);}
		[Bindable]
		public function set accumulatedAbsoluteFrequency(value:int):void{	setTagText(ACCUMULATED_ABSOLUTE_FREQUENCY_TAG_NAME,""+value);}
		
		//---------------------------------GETTERS------------------------------------
		public function get taxId():String{	return getTagText(TAX_ID_TAG_NAME);}
		public function get scientificName():String{	return getTagText(SCIENTIFIC_NAME_TAG_NAME);}
		public function get absoluteFrequency():int{	return parseInt(getTagText(ABSOLUTE_FREQUENCY_TAG_NAME));}
		public function get accumulatedAbsoluteFrequency():int{	return parseInt(getTagText(ACCUMULATED_ABSOLUTE_FREQUENCY_TAG_NAME));}
	
	}
}