<?php get_header() ?>

<section class="hero is-large is-primary is-bold">
  <div class="hero-body">
    <div class="container">
      <div class="logo-img"><img src="http://factoryhardcore.com/wp-content/uploads/2018/05/Factory-Hardcore_Final-nobg.png" style="width: 55%;position:  absolute; margin-top: -93px;"></div>
      </h2>
    </div>
  </div>
</section>

<section class="section second-narrow">
  <div class="columns front-info">
    <div class="column has-text-centered">
      <p class="has-text-weight-bold is-size-2 is-uppercase"><?php echo get_field('front_page_info_header') ?></p>
      <p class="is-size-6 join-text"><?php echo get_field('front_page_info_content') ?></p>
      <a class="button is-rounded is-medium is-primary" href="https://mindbody.io/"><?php echo get_field('front_page_info_button_name') ?></a>
    </div>
  </div>
</section>

<section class="section second-narrow">
  <p class="has-text-centered is-size-2 is-uppercase featured-headline" style="padding-bottom: 15px;"><?php echo get_field('front_page_featured_title') ?></p>
  <div class="tile is-ancestor">
  <div class="tile is-parent has-text-centered">
    <article class="tile is-child box">
      <p class="title"><?php echo get_field('front_page_featured_grid_a_title') ?></p>
      <figure class="image is-3by2">
        <img src="<?php the_field('front_page_featured_grid_a_image'); ?>" style="object-fit: cover;">
      </figure>
      <div class="content">
        <p><?php echo get_field('front_page_featured_grid_a_content') ?></p>
      </div>
    </article>
  </div>
  <div class="tile is-parent has-text-centered">
    <article class="tile is-child box">
      <p class="title"><?php echo get_field('front_page_featured_grid_b_title') ?></p>
      <figure class="image is-3by2">
        <img src="<?php the_field('front_page_featured_grid_b_image'); ?>" style="object-fit: cover;">
      </figure>
      <div class="content">
        <p><?php echo get_field('front_page_featured_grid_b_content') ?></p>
      </div>
    </article>
  </div>
  <div class="tile is-parent has-text-centered">
    <article class="tile is-child box">
      <p class="title"><?php echo get_field('front_page_featured_grid_c_title') ?></p>
      <figure class="image is-3by2">
        <img src="<?php the_field('front_page_featured_grid_c_image'); ?>" style="object-fit: cover;">
      </figure>
      <div class="content">
        <p><?php echo get_field('front_page_featured_grid_c_content') ?></p>
      </div>
    </article>
  </div>
</div>
<div class="see-more-link has-text-centered">
  <a class="button is-rounded is-medium is-primary" href="/classes">See More&#8594;</a>
</div>
</section>

<?php get_footer() ?>
