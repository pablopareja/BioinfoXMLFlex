package com.era7.bioinfo.xml
{
	import com.era7.bioinfo.xml.go.GoTerm;
	import com.era7.xmlapi.model.XMLError;
	import com.era7.xmlapi.model.XMLObject;
	
	public class Protein extends XMLObject
	{
		
		public static const TAG_NAME:String = "protein";
		
		public static const ID_TAG_NAME:String = "id";
		public static const LENGTH_TAG_NAME:String = "length";
		public static const DB_TAG_NAME:String = "db";
		public static const SPLICE_TAG_NAME:String = "splice";
		public static const SYMBOL_TAG_NAME:String = "symbol";
		public static const TAXON_TAG_NAME:String = "taxon";
		public static const QUALIFIER_TAG_NAME:String = "qualifier";
		
		public static const PROTEIN_COVERAGE_ABSOLUTE_TAG_NAME:String = "protein_coverage_absolute";
		public static const PROTEIN_COVERAGE_PERCENTAGE_TAG_NAME:String = "protein_coverage_percentage";
		
		public static const GO_TERMS_TAG_NAME:String = "go_terms";
		public static const PROCESS_GO_TERMS_TAG_NAME:String = "biological_process";
		public static const FUNCTION_GO_TERMS_TAG_NAME:String = "molecular_function";
		public static const COMPONENT_GO_TERMS_TAG_NAME:String = "cellular_component";
		
		/**
		 * CONSTRUCTOR
		 */
		public function Protein(... args)
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
	
		
		public function addGoTerm(term:GoTerm, basedOnAspect:Boolean):void{
			initGoTermsTag();
			if(basedOnAspect){
				if(term.aspect == GoTerm.ASPECT_COMPONENT){
					initComponentTag();
					XML(XML(content.child(GO_TERMS_TAG_NAME)[0]).child(COMPONENT_GO_TERMS_TAG_NAME)[0]).appendChild(term.getContent());
				}else if(term.aspect == GoTerm.ASPECT_FUNCTION){
					initFunctionTag();
					XML(XML(content.child(GO_TERMS_TAG_NAME)[0]).child(FUNCTION_GO_TERMS_TAG_NAME)[0]).appendChild(term.getContent());
				}else if(term.aspect == GoTerm.ASPECT_PROCESS){
					initProcessTag();
					XML(XML(content.child(GO_TERMS_TAG_NAME)[0]).child(PROCESS_GO_TERMS_TAG_NAME)[0]).appendChild(term.getContent());
				}
			}else{
				content.child(GO_TERMS_TAG_NAME).appendChild(term.getContent());
			}
		}
		
		private function initGoTermsTag():void{
			if(content.child(GO_TERMS_TAG_NAME) == null){
				content.appendChild(<{GO_TERMS_TAG_NAME}/>);	
			}				
		}
		private function initComponentTag():void{
			initGoTermsTag();
			var temp:XML = content.child(GO_TERMS_TAG_NAME).child(COMPONENT_GO_TERMS_TAG_NAME);
			if(temp == null){
				content.child(GO_TERMS_TAG_NAME).appendChild(<{COMPONENT_GO_TERMS_TAG_NAME}/>);				
			}
		}
		private function initFunctionTag():void{
			initGoTermsTag();
			var temp:XML = content.child(GO_TERMS_TAG_NAME).child(FUNCTION_GO_TERMS_TAG_NAME);
			if(temp == null){
				content.child(GO_TERMS_TAG_NAME).appendChild(<{FUNCTION_GO_TERMS_TAG_NAME}/>);				
			}
		}
		private function initProcessTag():void{
			initGoTermsTag();
			var temp:XML = content.child(GO_TERMS_TAG_NAME).child(PROCESS_GO_TERMS_TAG_NAME);
			if(temp == null){
				content.child(GO_TERMS_TAG_NAME).appendChild(<{PROCESS_GO_TERMS_TAG_NAME}/>);				
			}
		}
		
		//---------------------------------SETTERS------------------------------------
		[Bindable]
		public function set id(value:String):void{	setTagText(ID_TAG_NAME,value);}
		[Bindable]
		public function set length(value:Number):void{	setTagText(LENGTH_TAG_NAME,value.toString());}
		[Bindable]
		public function set proteinCoverageAbsolute(value:Number):void{	setTagText(PROTEIN_COVERAGE_ABSOLUTE_TAG_NAME,value.toString());}
		[Bindable]
		public function set proteinCoveragePercentage(value:Number):void{	setTagText(PROTEIN_COVERAGE_PERCENTAGE_TAG_NAME,value.toString());}
		[Bindable]
		public function set db(value:String):void{	setTagText(DB_TAG_NAME,value);}
		[Bindable]
		public function set splice(value:String):void{	setTagText(SPLICE_TAG_NAME,value);}
		[Bindable]
		public function set symbol(value:String):void{	setTagText(SYMBOL_TAG_NAME,value);}
		[Bindable]
		public function set taxon(value:String):void{	setTagText(TAXON_TAG_NAME,value);}
		[Bindable]
		public function set qualifier(value:String):void{	setTagText(QUALIFIER_TAG_NAME,value);}
		
		//---------------------------------GETTERS------------------------------------
		public function get id():String{	return getTagText(ID_TAG_NAME);}
		public function get length():Number{ 	return new Number(getTagText(LENGTH_TAG_NAME));}
		public function get proteinCoverageAbsolute():Number{ 	return new Number(getTagText(PROTEIN_COVERAGE_ABSOLUTE_TAG_NAME));}
		public function get proteinCoveragePercentage():Number{ 	return new Number(getTagText(PROTEIN_COVERAGE_PERCENTAGE_TAG_NAME));}
		public function get db():String{	return getTagText(DB_TAG_NAME);}
		public function get splice():String{	return getTagText(SPLICE_TAG_NAME);}
		public function get symbol():String{	return getTagText(SYMBOL_TAG_NAME);}
		public function get taxon():String{	return getTagText(TAXON_TAG_NAME);}
		public function get qualifier():String{	return getTagText(QUALIFIER_TAG_NAME);}
	
	}
}