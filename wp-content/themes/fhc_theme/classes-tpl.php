<?php
/*
* Template Name: Classes Template
*
*/
?>
<?php
  get_header();
  $i = 1;
 ?>

 <section class="section second-narrow">
   <div class="columns front-info add-margin" style="background: rgba(0, 0, 0, 0.7); color: white;">
     <div class="column has-text-centered">
       <p class="has-text-weight-bold is-size-2 is-uppercase"><?php echo get_field('post_type_archive_title') ?></p>
       <p class="is-size-6 join-text"><?php echo get_field('post_type_arcive_content') ?></p>
       <?php echo do_shortcode('[hc-hmw snippet="Classes"]'); ?>
     </div>
   </div>
 </section>


       <?php
       echo '<section class="section second-narrow class-section">
            <div class="tile is-ancestor">
          ';
        $args = array( 'post_type' => 'our_classes', 'posts_per_page' => 10 );
        $loop = new WP_Query( $args );
        while ( $loop->have_posts() ) : $loop->the_post();
        echo '
            <div class="tile is-parent has-text-centered" style="background: rgba(7,7,7,0.5);">
            <article class="tile is-child box" style="background: rgba(0,0,0,0.8);" style="background: rgba(0,0,0,0.8);">
          <p class="title">';
              the_title();
          echo '</p><figure class="image is-3by2 room-img">';
              the_post_thumbnail();
          echo '</figure><div class="content">';
            the_content();
          echo '</div>
              </article>
            </div>';
            if($i % 3 == 0) {echo '
              </div>
              </section>
              <section class="section second-narrow class-section">
              <div class="tile is-ancestor">
              ';}
          $i++;
        endwhile;
        echo '</div>
        </section>';
       ?>

 <!-- <section class="section second-narrow">
   <div class="tile is-ancestor">
   <div class="tile is-parent has-text-centered" style="background: rgba(7,7,7,0.5);">
     <article class="tile is-child box" style="background: rgba(0,0,0,0.8);" style="background: rgba(0,0,0,0.8);">
       <p class="title"><?php echo get_field('classes_grid_a_title') ?></p>
       <figure class="image is-3by2">
         <img src="<?php the_field('classes_grid_a_image'); ?>" style="object-fit: cover;">
       </figure>
       <div class="content">
         <p><?php echo get_field('classes_grid_a_content') ?></p>
       </div>
     </article>
   </div>
   <div class="tile is-parent has-text-centered" style="background: rgba(7,7,7,0.5);">
     <article class="tile is-child box" style="background: rgba(0,0,0,0.8);">
       <p class="title"><?php echo get_field('classes_grid_b_title') ?></p>
       <figure class="image is-3by2">
         <img src="<?php the_field('classes_grid_b_image'); ?>" style="object-fit: cover;">
       </figure>
       <div class="content">
         <p><?php echo get_field('classes_grid_b_content') ?></p>
       </div>
     </article>
   </div>
   <div class="tile is-parent has-text-centered" style="background: rgba(7,7,7,0.5);">
     <article class="tile is-child box" style="background: rgba(0,0,0,0.8);">
       <p class="title"><?php echo get_field('classes_grid_c_title') ?></p>
       <figure class="image is-3by2">
         <img src="<?php the_field('classes_grid_c_image'); ?>" style="object-fit: cover;">
       </figure>
       <div class="content">
         <p><?php echo get_field('classes_grid_c_content') ?></p>
       </div>
     </article>
   </div>
 </div>
 </section>

 <section class="section second-narrow">
   <div class="tile is-ancestor">
   <div class="tile is-parent has-text-centered" style="background: rgba(7,7,7,0.5);">
     <article class="tile is-child box" style="background: rgba(0,0,0,0.8);">
       <p class="title"><?php echo get_field('classes_grid_d_title') ?></p>
       <figure class="image is-3by2">
         <img src="<?php the_field('classes_grid_d_image'); ?>" style="object-fit: cover;">
       </figure>
       <div class="content">
         <p><?php echo get_field('classes_grid_d_content') ?></p>
       </div>
     </article>
   </div>
   <div class="tile is-parent has-text-centered" style="background: rgba(7,7,7,0.5);">
     <article class="tile is-child box" style="background: rgba(0,0,0,0.8);">
       <p class="title"><?php echo get_field('classes_grid_e_title') ?></p>
       <figure class="image is-3by2">
         <img src="<?php the_field('classes_grid_e_image'); ?>" style="object-fit: cover;">
       </figure>
       <div class="content">
         <p><?php echo get_field('classes_grid_e_content') ?></p>
       </div>
     </article>
   </div>
   <div class="tile is-parent has-text-centered" style="background: rgba(7,7,7,0.5);">
     <article class="tile is-child box" style="background: rgba(0,0,0,0.8);">
       <p class="title"><?php echo get_field('classes_grid_f_title') ?></p>
       <figure class="image is-3by2">
         <img src="<?php the_field('classes_grid_f_image'); ?>" style="object-fit: cover;">
       </figure>
       <div class="content">
         <p><?php echo get_field('classes_grid_f_content') ?></p>
       </div>
     </article>
   </div>
 </div>
 </section>

 <section class="section second-narrow">
   <div class="tile is-ancestor">
   <div class="tile is-parent has-text-centered" style="background: rgba(7,7,7,0.5);">
     <article class="tile is-child box" style="background: rgba(0,0,0,0.8);">
       <p class="title"><?php echo get_field('classes_grid_g_title') ?></p>
       <figure class="image is-3by2">
         <img src="<?php the_field('classes_grid_g_image'); ?>" style="object-fit: cover;">
       </figure>
       <div class="content">
         <p><?php echo get_field('classes_grid_g_content') ?></p>
       </div>
     </article>
   </div>
   <div class="tile is-parent has-text-centered" style="background: rgba(7,7,7,0.5);">
     <article class="tile is-child box" style="background: rgba(0,0,0,0.8);">
       <p class="title"><?php echo get_field('classes_grid_h_title') ?></p>
       <figure class="image is-3by2">
         <img src="<?php the_field('classes_grid_h_image'); ?>" style="object-fit: cover;">
       </figure>
       <div class="content">
         <p><?php echo get_field('classes_grid_h_content') ?></p>
       </div>
     </article>
   </div>
   <div class="tile is-parent has-text-centered" style="background: rgba(7,7,7,0.5);">
     <article class="tile is-child box" style="background: rgba(0,0,0,0.8);">
       <p class="title"><?php echo get_field('classes_grid_i_title') ?></p>
       <figure class="image is-3by2">
         <img src="<?php the_field('classes_grid_i_image'); ?>" style="object-fit: cover;">
       </figure>
       <div class="content">
         <p><?php echo get_field('classes_grid_i_content') ?></p>
       </div>
     </article>
   </div>
 </div>
 </section> -->


  <?php
   get_footer();
  ?>
