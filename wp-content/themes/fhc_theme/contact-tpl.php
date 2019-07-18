<?php
/*
* Template Name: Contact Template
*
*/
?>
<?php
  get_header();
 ?>
 <section class="section second-narrow">
   <div class="columns front-info add-margin" style="background: rgba(0, 0, 0, 0.7); color: white;">
     <div class="column has-text-centered">
       <p class="has-text-weight-bold is-size-2 is-uppercase"><?php echo get_field('contact_title') ?></p>
       <p class="is-size-6 join-text"><?php echo get_field('contact_content') ?></p>
     </div>
   </div>
 </section>

 <section class="section is-three-fifths">
   <div class="columns">
     <div class="column card has-text-centered contact-form" style="background: rgba(128,0,0,0.5); color: white;">
      <?php echo do_shortcode('[hc-hmw snippet="Contact"]'); ?>
    </div>
  </div>
</section>

  <?php
   get_footer();
  ?>
