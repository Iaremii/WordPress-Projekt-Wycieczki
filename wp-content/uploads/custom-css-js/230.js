<!-- start Simple Custom CSS and JS -->
<script type="text/javascript">
jQuery(document).ready(function( $ ){
    $( '#user-rating' ).hide().before( '<p class="stars"><span><a class="star-1" href="#">1</a><a class="star-2" href="#">2</a><a class="star-3" href="#">3</a><a class="star-4" href="#">4</a><a class="star-5" href="#">5</a></span></p>' );
  $( 'body' ).on( 'click', '.b-author p.stars a', function() {
		var $star   	= $( this ),
			$rating 	= $( this ).closest( '.b-author' ).find( '#user-rating' ),
			$container 	= $( this ).closest( '.stars' );

		$rating.val( $star.text() );
		$star.siblings( 'a' ).removeClass( 'active' );
		$star.addClass( 'active' );
		$container.addClass( 'selected' );

		return false;
	} );
});
</script>
<!-- end Simple Custom CSS and JS -->
