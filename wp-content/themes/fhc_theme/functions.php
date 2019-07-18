<?php
add_filter('show_admin_bar', '__return_false');
function my_assets() {
	wp_enqueue_style( 'theme-style', get_stylesheet_uri(), array( 'style' ) );
	wp_enqueue_style( 'style', get_stylesheet_directory_uri() . '/style.css' );
  wp_enqueue_script( 'theme-scripts', get_stylesheet_directory_uri() . '/script.js', array( 'jquery' ), '1.0', true );
}
add_action( 'wp_enqueue_scripts', 'my_assets' );

add_action( 'wp_enqueue_scripts', 'add_my_script' );
function add_my_script() {
    wp_enqueue_script(
        'script', // name your script so that you can attach other scripts and de-register, etc.
        get_template_directory_uri() . '/js/script.js', // this is the location of your script file
        array('jquery') // this array lists the scripts upon which your script depends
    );
}

function shapeSpace_include_custom_jquery() {

	wp_deregister_script('jquery');
	wp_enqueue_script('jquery', 'https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js', array(), null, true);

}
add_action('wp_enqueue_scripts', 'shapeSpace_include_custom_jquery');

function register_my_menu() {
  register_nav_menu('nav-menu',__( 'Nav Menu' ));
}
add_action( 'init', 'register_my_menu' );

add_theme_support('post-thumbnails');

 ?>
