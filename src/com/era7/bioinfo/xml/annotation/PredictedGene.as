package com.era7.bioinfo.xml.annotation
{
	import com.era7.util.BooleanParser;
	import com.era7.xmlapi.model.XMLError;
	import com.era7.xmlapi.model.XMLObject;
	
	
	public class PredictedGene extends XMLObject
	{
		
		public static const TAG_NAME:String = "predicted_gene";
		
		public static const STATUS_DISMISSED:String = "dismissed";
		public static const STATUS_SELECTED:String = "selected";
		public static const STATUS_SELECTED_MINOR_THRESHOLD:String = "selected_minor_threshold";
		
		public static const ID_TAG_NAME:String = "id";
		public static const LENGTH_TAG_NAME:String = "length";
		public static const PROTEIN_NAMES_TAG_NAME:String = "protein_names";
		public static const STATUS_TAG_NAME:String = "status";
		public static const START_POSITION_TAG_NAME:String = "start_position";
		public static const END_POSITION_TAG_NAME:String = "end_position";
		public static const STRAND_TAG_NAME:String = "strand";
		public static const START_IS_CANONICAL_TAG_NAME:String = "start_is_canonical";
		public static const END_IS_CANONICAL_TAG_NAME:String = "end_is_canonical";
		public static const EVALUE_TAG_NAME:String = "evalue";
		public static const ANNOTATION_UNIPROT_ID_TAG_NAME:String = "annotation_uniprot_id";
		public static const HIT_DEF_TAG_NAME:String = "hit_def";
		public static const GENE_DISSMISSED_BY_TAG_NAME:String = "gene_dismissed_by";
		
		public static const EC_NUMBERS_TAG_NAME:String = "ec_numbers";
		public static const INTERPRO_TAG_NAME:String = "interpro";
		public static const GENE_ONTOLOGY_TAG_NAME:String = "gene_ontology";
		public static const COMMENT_FUNCTION_TAG_NAME:String = "comment_function";
		public static const PATHWAY_TAG_NAME:String = "pathway";
		public static const PROTEIN_FAMILY_TAG_NAME:String = "protein_family";
		public static const KEYWORDS_TAG_NAME:String = "keywords";
		public static const ORGANISM_TAG_NAME:String = "organism";
		
		public static const SEQUENCE_TAG_NAME:String = "sequence";
		public static const PROTEIN_SEQUENCE_TAG_NAME:String = "protein_sequence";
		
		public static const CONTIG_ID_TAG_NAME:String = "contig_id";
		
		/**
		 * CONSTRUCTOR
		 */
		public function PredictedGene(... args)
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
		public function set ecNumbers(value:String):void{	setTagText(EC_NUMBERS_TAG_NAME,value);}
		[Bindable]
		public function set interpro(value:String):void{ 	setTagText(INTERPRO_TAG_NAME,value);}
		[Bindable]
		public function set geneOntology(value:String):void{	setTagText(GENE_ONTOLOGY_TAG_NAME,value);}
		[Bindable]
		public function set pathway(value:String):void{ 	setTagText(PATHWAY_TAG_NAME,value);}
		[Bindable]
		public function set proteinFamily(value:String):void{ 	setTagText(PROTEIN_FAMILY_TAG_NAME,value);}
		[Bindable]
		public function set keywords(value:String):void{ 	setTagText(KEYWORDS_TAG_NAME,value);}
		[Bindable]
		public function set commentFunction(value:String):void{ 	setTagText(COMMENT_FUNCTION_TAG_NAME,value);}
		[Bindable]
		public function set proteinNames(value:String):void{	setTagText(PROTEIN_NAMES_TAG_NAME,value);}
		[Bindable]
		public function set status(value:String):void{	setTagText(STATUS_TAG_NAME,value);}
		[Bindable]
		public function set startPosition(value:int):void{	setTagText(START_POSITION_TAG_NAME,""+value);}
		[Bindable]
		public function set endPosition(value:int):void{	setTagText(END_POSITION_TAG_NAME,""+value);}
		[Bindable]
		public function set strand(value:String):void{	setTagText(STRAND_TAG_NAME,value);}
		[Bindable]
		public function set startIsCanonical(value:Boolean):void{	setTagText(START_IS_CANONICAL_TAG_NAME,""+value);}
		[Bindable]
		public function set endIsCanonical(value:Boolean):void{	setTagText(END_IS_CANONICAL_TAG_NAME,""+value);}
		[Bindable]
		public function set organism(value:String):void{	setTagText(ORGANISM_TAG_NAME,value);}
		[Bindable]
		public function set annotationUniprotId(value:String):void{	setTagText(ANNOTATION_UNIPROT_ID_TAG_NAME,value);}
		[Bindable]
		public function set sequence(value:String):void{	setTagText(SEQUENCE_TAG_NAME,value);}
		[Bindable]
		public function set proteinSequence(value:String):void{	setTagText(PROTEIN_SEQUENCE_TAG_NAME,value);}
		[Bindable]
		public function set hitDef(value:String):void{	setTagText(HIT_DEF_TAG_NAME,value);}
		[Bindable]
		public function set length(value:int):void{	setTagText(LENGTH_TAG_NAME,""+value);}
		[Bindable]
		public function set geneDismissedBy(value:String):void{	setTagText(GENE_DISSMISSED_BY_TAG_NAME,value);}
		[Bindable]
		public function set evalue(value:String):void{	setTagText(EVALUE_TAG_NAME,value);}
		[Bindable]
		public function set contigId(value:String):void{	setTagText(CONTIG_ID_TAG_NAME,value);}
		
		
		//---------------------------------GETTERS------------------------------------
		
		public function get id():String{	return getTagText(ID_TAG_NAME);}	
		public function get proteinNames():String{	return getTagText(PROTEIN_NAMES_TAG_NAME);}		
		public function get status():String{	return getTagText(STATUS_TAG_NAME);}		
		public function get startPosition():int{	return parseInt(getTagText(START_POSITION_TAG_NAME));}		
		public function get endPosition():int{	return parseInt(getTagText(END_POSITION_TAG_NAME));}		
		public function get strand():String{	return getTagText(STRAND_TAG_NAME);}	
		public function get startIsCanonical():Boolean{	return BooleanParser.parseBoolean(getTagText(START_IS_CANONICAL_TAG_NAME));}		
		public function get endIsCanonical():Boolean{	return BooleanParser.parseBoolean(getTagText(END_IS_CANONICAL_TAG_NAME));}
		public function get commentFunction():String{	return getTagText(COMMENT_FUNCTION_TAG_NAME);}
		public function get keywords():String{	return getTagText(KEYWORDS_TAG_NAME);}
		public function get proteinFamily():String{	return getTagText(PROTEIN_FAMILY_TAG_NAME);}
		public function get pathway():String{	return getTagText(PATHWAY_TAG_NAME);}
		public function get geneOntology():String{	return getTagText(GENE_ONTOLOGY_TAG_NAME);}
		public function get interpro():String{	return getTagText(INTERPRO_TAG_NAME);}
		public function get ecNumbers():String{	return getTagText(EC_NUMBERS_TAG_NAME);}
		public function get organism():String{	return getTagText(ORGANISM_TAG_NAME);}
		public function get annotationUniprotId():String{	return getTagText(ANNOTATION_UNIPROT_ID_TAG_NAME);}
		public function get sequence():String{ 	return getTagText(SEQUENCE_TAG_NAME);}
		public function get proteinSequence():String{ 	return getTagText(PROTEIN_SEQUENCE_TAG_NAME);}
		public function get hitDef():String{ return getTagText(HIT_DEF_TAG_NAME);}
		public function get length():int{ return parseInt(getTagText(LENGTH_TAG_NAME));}
		public function get geneDismissedBy():String{ return getTagText(GENE_DISSMISSED_BY_TAG_NAME);}
		public function get evalue():String{	return getTagText(EVALUE_TAG_NAME);}
		public function get contigId():String{	return getTagText(CONTIG_ID_TAG_NAME);}
		
		
	}
}