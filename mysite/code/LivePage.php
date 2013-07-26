<?php
/**
 * Defines the HomePage page type
 */
class LivePage extends Page {
	static $defaults = array( 
	);
	static $db = array(
	);
	static $has_one = array(
	'FeatureImage' => 'Image'
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
	}
}
class LivePage_Controller extends Page_Controller {
	public function init() {
		parent::init();
		//RSSFeed::linkToFeed($this->Link() . "rss", "RSS feed");
	}
}
?>