<?php
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme and one of the
 * two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * For example, it puts together the home page when no home.php file exists.
 *
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * @package OceanWP WordPress theme
 */

get_header(); ?>

	<?php do_action( 'ocean_before_content_wrap' ); ?>

	<div id="content-wrap" class="container clr">

		<?php do_action( 'ocean_before_primary' ); ?>

		<?php 


		$author = get_user_by( 'slug', get_query_var( 'author_name' ) );
		if ($_REQUEST['user-rating']) {
			update_field( 'rating', $_REQUEST['user-rating'], 'user_'.$author->ID );
		}
		$rating = get_field('rating', 'user_'.$author->ID);
		$avatar = get_avatar_url($author->ID);

		?>

		<div class="b-author">
			<div class="b-author__name"><?php  echo $author->user_login ?></div>
			<div class="b-author__rating"><div class="star-rating"><span style="width:<?php echo (int) $rating * 20 ?>%"></span></div></div>
			<div class="b-author__avatar"><img src="<?php echo $avatar ?>"/></div>
			<?php echo
			'<form><label for="user-rating">' . esc_html__( 'Your rating', 'woocommerce' ) . '</label><select name="user-rating" id="user-rating" aria-required="true" required>
			<option value="">' . esc_html__( 'Rate&hellip;', 'woocommerce' ) . '</option>
			<option value="5">' . esc_html__( 'Perfect', 'woocommerce' ) . '</option>
			<option value="4">' . esc_html__( 'Good', 'woocommerce' ) . '</option>
			<option value="3">' . esc_html__( 'Average', 'woocommerce' ) . '</option>
			<option value="2">' . esc_html__( 'Not that bad', 'woocommerce' ) . '</option>
			<option value="1">' . esc_html__( 'Very poor', 'woocommerce' ) . '</option>
		</select>
			<button type="submit">Testt</button>
		</form>';
		?>
		</div>

		<div id="primary" class="content-area clr">

			<?php do_action( 'ocean_before_content' ); ?>

			<div id="content" class="site-content clr">

				<?php do_action( 'ocean_before_content_inner' ); ?>

				<?php
		
					echo do_shortcode('[products]');
?>


				<?php do_action( 'ocean_after_content_inner' ); ?>

			</div><!-- #content -->

			<?php do_action( 'ocean_after_content' ); ?>

		</div><!-- #primary -->

		<?php do_action( 'ocean_after_primary' ); ?>

		<?php do_action( 'ocean_display_sidebar' ); ?>

	</div><!-- #content-wrap -->

	<?php do_action( 'ocean_after_content_wrap' ); ?>

<?php get_footer(); ?>