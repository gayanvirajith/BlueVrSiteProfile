# Blue-VR ProcessWire site profile

Blue-VR is a ProcessWire site profile based on Bootstrap 3.x

## About the Blue-VR site profile

We named this profile as Blue-VR. This site profile was made by Gayan Virajith. Profile can be used 
with ProcessWire open source CMS/CMF version 2.5+ The front-end uses the Bootstrap 3.x css framework 
for to get the responsiveness and mobile friendliness.

### Overall features

 * HTML5 & CSS3 + ({less})
 * Build with bootstrap 3.x
 * SEO Friendly
 * Clean & modern design
 * Responsive markup
 * Contact form and google map locations with multiple google markers
 * Testimonials using bxSlider
 * AIOM supports (Just install the module no need to touch the code)

### How to install

Please take a copy of the [latest ProcessWire](http://processwire.com/download/). 
Replace the *install*, *modules* and *templates* directories with those in 
this profile, as shown below: 

- /site-default/install/
- /site-default/modules/
- /site-default/templates/ 

Make sure you do following steps as well

 1. Add `tinymce` directory into /site-defaut.
 2. Add the following two lines to your `/site/config.php` file: 

```
$config->prependTemplateFile = '_init.php';
$config->appendTemplateFile = '_done.php';
```

### Screenshots

![Desktop screenshot](https://raw.githubusercontent.com/gayanvirajith/BlueVrSiteProfile/master/blue-vr-home-desktop.jpg "Desktop screen")

![Mobile screenshot](https://raw.githubusercontent.com/gayanvirajith/BlueVrSiteProfile/master/blue-vr-home-mobile.jpg "Mobile screen")

#### Help / Feedback

Hi, I am Gayan Virajith. Please send your questions/feedback/bugs to gayanvirajith@gmail.com. I am glad to support.

#### Local environment used

 * ProcessWire 2.5
 * Operating system Ubuntu 14.04 LTS
 * PHP 5.5.9
 * Server version Apache/2.4.7 (Ubuntu)

#### Credits

 * I would like to thanks [Ryan Cramer](https://github.com/ryancramerdesign/) (Founder, Lead developer of the ProcessWire open source project) for giving us great CMS/CMF and modules.
 * [Hani AbuGhazaleh](https://github.com/Hani79) for a great module of Fieldtype: [Select (AKA Drop Down)](https://github.com/Hani79/Processwire_FieldType_Select_Drop_Down)
 * [David Karich](https://github.com/FlipZoomMedia) for providing such a nice module [AIOM+](https://github.com/FlipZoomMedia/ProcessWire-AIOM-All-In-One-Minify).
 * [Maheshika Lakmali](http://maheshikalakmali.github.io) (My loving wife) who has done all the graphic designs. 

#### How this profile made

This profile is done using Site Profile Export Module by Ryan Cramer. Read or download it from github: [ProcessProfileExporter](https://github.com/ryancramerdesign/ProcessExportProfile)
