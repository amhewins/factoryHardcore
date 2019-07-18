<?php
/*
* Template Name: About Template
*
*/
?>
<?php
  get_header();
 ?>


 <section class="section second-narrow">
   <div class="columns front-info add-margin" style="background: rgba(0, 0, 0, 0.7); color: white;">
     <div class="column has-text-centered">
       <p class="has-text-weight-bold is-size-2 is-uppercase"><?php echo get_field('about_title') ?></p>
       <p class="is-size-6 join-text"><?php echo get_field('company_overview_content') ?></p>
     </div>
   </div>
 </section>

 <section class="section second-narrow">
   <p class="has-text-centered is-size-2 is-uppercase featured-headline" style="padding-bottom: 15px; text-shadow: 2px 2px 3px rgba(0, 0, 0, .4);">Spotlight Team Members</p>
   <div class="tile is-ancestor">
   <div class="tile is-parent has-text-centered">
     <article class="tile is-child box">
       <p class="title"><?php echo get_field('team_member_a_title') ?></p>
       <figure class="image is-3by2">
         <img src="<?php the_field('team_member_a_image'); ?>" style="object-fit: cover;">
       </figure>
       <div class="content">
         <p><?php echo get_field('team_member_a_bio') ?></p>
       </div>
     </article>
   </div>
   <div class="tile is-parent has-text-centered">
     <article class="tile is-child box">
       <p class="title"><?php echo get_field('team_member_b_title') ?></p>
       <figure class="image is-3by2">
         <img src="<?php the_field('team_member_b_image'); ?>" style="object-fit: cover;">
       </figure>
       <div class="content">
         <p><?php echo get_field('team_member_b_bio') ?></p>
       </div>
     </article>
   </div>
   <div class="tile is-parent has-text-centered">
     <article class="tile is-child box">
       <p class="title"><?php echo get_field('team_member_c_title') ?></p>
       <figure class="image is-3by2">
         <img src="<?php the_field('team_member_c_image'); ?>" style="object-fit: cover;">
       </figure>
       <div class="content">
         <p><?php echo get_field('team_member_c_bio') ?></p>
       </div>
     </article>
   </div>
 </div>
 </section>

 <section class="section second-narrow">
   <div class="columns front-info" style="background: rgba(128,0,0,0.5); color: white;">
     <div class="column has-text-centered">
       <p class="has-text-weight-bold is-size-2 is-uppercase"><?php echo get_field('last_block_title') ?></p>
       <p class="is-size-6 join-text"><?php echo get_field('last_block_content') ?></p>
     </div>
   </div>
 </section>

 <?php
  get_footer();
 ?>
