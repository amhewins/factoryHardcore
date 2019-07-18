<!DOCTYPE html>
<html <?php language_attributes(); ?>>
  <head>
    <title>Factory Hardcore <?php wp_title("",true); ?></title>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta id="viewport" name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=1" />
    <link rel="profile" href="http://gmpg.org/xfn/11" />
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.min.css">
    <?php wp_enqueue_script("jquery"); ?>
    <?php if ( is_singular() && get_option( 'thread_comments' ) ) wp_enqueue_script( 'comment-reply' ); ?>
    <?php wp_head(); ?>
  </head>

  <body <?php body_class(); ?>>

    <nav class="navbar is-fixed-top">
  <div class="navbar-brand">
    <a class="navbar-item logo-invert" href="/">
      <img src="http://factoryhardcore.com/wp-content/uploads/2018/04/factory-hardcore-FINAL.png" alt="Bulma: a modern CSS framework based on Flexbox" width="112" height="28">
    </a>
    <div class="navbar-burger burger" data-target="navbarExampleTransparentExample">
      <span style="color: white;"></span>
      <span style="color: white;"></span>
      <span style="color: white;"></span>
    </div>
  </div>

  <div id="navbarExampleTransparentExample" class="navbar-menu">
    <div class="navbar-end">
      <div class="navbar-item has-dropdown is-hoverable">

        <a class="navbar-link">
          About
        </a>
        <div class="navbar-dropdown is-boxed" style="background: #4d4d4d;">
          <a class="navbar-item navbar-item-drop" href="/classes/" style="color: white;">
            Classes
          </a>
          <a class="navbar-item navbar-item-drop" href="/company-overview/" style="color: white;">
            Company Overview
          </a>
          <a class="navbar-item navbar-item-drop" href="/rooms/" style="color: white;">
            Rooms
          </a>
        </div>
      </div>
    </div>
      <a class="navbar-item" href="/contact-us/">
        Contact
      </a>
      <a class="navbar-item" href="http://factoryhardcore.com/mindbody/">
        MindBody
      </a>
    </div>
  </div>
</nav>
