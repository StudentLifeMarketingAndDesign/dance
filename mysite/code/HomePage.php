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
   	$fields->addFieldToTab('Root.Content.Main', new TextField('HeadlineText', 'Headline'));
	   	$fields->addFieldToTab('Root.Content.Main', new TextField('HomeLink', 'Link'));
   $fields->addFieldToTab('Root.Content.Images', new ImageField('FeatureImage', 'Feature Box Image MUST be 715x293 pixels'));


    	

   return $fields;
}
}
 
class HomePage_Controller extends Page_Controller {
	
			public function init() {
			parent::init();
			RSSFeed::linkToFeed($this->Link() . "rss", "RSS feed");
	}
	
	
		function rss() {
			$set = DataObject::get("NewsPage");
			
			$rss = new RSSFeed($set, $this->Link(), "News Feed", "Shows a list of the most recently updated news and events.", "Title", "Content", "Author");
			$rss->outputToBrowser();
	}	
	
}
?>