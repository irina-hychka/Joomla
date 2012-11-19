<?php
JLoader::import('joomla.filesystem.file');

$color				= $this->params->get('templatecolor');
$logo				= $this->params->get('logo');
$navposition		= $this->params->get('navposition');
$headerImage		= $this->params->get('headerImage');
$app				= JFactory::getApplication();
$doc				= JFactory::getDocument();
$templateparams		= $app->getTemplate(true)->params;
$config = JFactory::getConfig();

JHtml::_('behavior.framework', true);


$doc->addStyleSheet(JURI::base() . 'templates/' . $this->template . '/css/general.css', $type = 'text/css', $media = 'screen,projection');
$doc->addScript("http://userapi.com/js/api/openapi.js?34", "text/javascript");

$currentMenuId = JSite::getMenu()->getActive()->id;
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>GeekHub - отримай практичні знання в сфері IT</title>
    <meta name="description" content="GeekHub надає можливість отримати практичні знання та навички в сфері розробки програмного забезпечення">
    <meta name="keywords" content="GeekHub, ГікХаб, Черкаси, Cherkassy">

    <jdoc:include type="head" />

<!--    <link href="style.css" type="text/css" rel="stylesheet" />-->



</head>
<body <?php if ($currentMenuId != 101):?>class="inner"<?php endif; ?>>
<div id="wrap">
    <div id="header">
        <h1><a href="/">GeekHub</a></h1>

        <jdoc:include type="modules" name="position-7" />

        <jdoc:include type="modules" name="position-2" />

        <span class="line"></span>


        <jdoc:include type="modules" name="position-0" />

    </div><!-- header -->
    <div id="content">
        <div class="home">
            <jdoc:include type="modules" name="position-12" />

            <jdoc:include type="message" />
            <jdoc:include type="component" />

            <ul class="social_share">
                <li id="vk">
                    <jdoc:include type="modules" name="position-3"/>
                </li>
                <li class="sertificates_list">
                    <jdoc:include type="modules" name="position-4"/>
                </li>
                <li>
                    <jdoc:include type="modules" name="position-5" style="xhtml" />

                </li>
            </ul>
        </div>
    </div><!-- content -->
    <ul id="footer">
        <li>
            <jdoc:include type="modules" name="position-7" />
        </li>
        <li>© Copyright 2011</li>
    </ul>
</div>
</body>
</html>