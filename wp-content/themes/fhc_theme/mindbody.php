<?php
/*
* Template Name: MindBody Template
*
*/
?>
<?php
  get_header();
 ?>

 <section class="section second-narrow">
   <div class="columns front-info add-margin" style="background: rgba(0, 0, 0, 0.7); color: white;">
     <div class="column">
       <p class="has-text-weight-bold is-size-2 is-uppercase"><?php echo get_field('about_title') ?></p>
       <p class="is-size-6 join-text"><?php echo do_shortcode('[hc-hmw snippet="Registration"]'); ?></p>
     </div>
   </div>
 </section>


 <?php
  get_footer();
 ?>
