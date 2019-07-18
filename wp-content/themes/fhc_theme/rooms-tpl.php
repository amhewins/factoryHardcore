<?php
/*
* Template Name: Rooms Template
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
     </div>
   </div>
 </section>


      <?php
      echo '<section class="section second-narrow">
        <div class="columns">';
       $args = array( 'post_type' => 'room', 'posts_per_page' => 10 );
       $loop = new WP_Query( $args );
       while ( $loop->have_posts() ) : $loop->the_post();
       echo '
          <div class="column card">';
         the_title();
        echo '<figure class="image is-3by2 room-img">';
         the_post_thumbnail();
        echo '</figure>';
         the_content();
         echo '</div>';
         if($i % 3 == 0) {echo '
              </div>
            </section>
           <section class="section second-narrow">
          <div class="columns">';}
         $i++;
       endwhile;
       echo '</div>
       </section>';

      ?>


 <?php
  get_footer();
  ?>
