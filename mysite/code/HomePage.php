<?php
/**
 * Defines the HomePage page type
 */
 
class HomePage extends Page {

	static $defaults = array( 
	
	);
	
	

   static $db = array(

	"HeadlineText" => "Text",
		"HomeLink" => "Text",

   );
   
   
   static $has_one = array(
    	'FeatureImage' => 'Image'
   );
   
   function getCMSFields() {
   $fields = parent::getCMSFields();
   	$fields->addFieldToTab('Root.Main', new TextField('HeadlineText', 'Headline'));
	   	$fields->addFieldToTab('Root.Main', new TextField('HomeLink', 'Link'));
   $fields->addFieldToTab('Root.Images', new UploadField('FeatureImage', 'Feature Box Image MUST be 715x293 pixels'));


    	

   return $fields;
}
}
 
class HomePage_Controller extends Page_Controller {
	
			public function init() {
			parent::init();
			RSSFeed::linkToFeed($this->Link() . "rss", "RSS feed");
	}
	
	
		function rss() {
			//$set = DataObject::get("NewsPage");
			$set = NewsPage::get(); 
			
			$rss = new RSSFeed($set, $this->Link(), "News Feed", "Shows a list of the most recently updated news and events.", "Title", "Content", "Author");
			$rss->outputToBrowser();
	}	
	
}
?>