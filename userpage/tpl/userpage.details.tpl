<!-- BEGIN: MAIN -->
<div class="content">
			<ul class="nav nav-pills">
			  <li>
			 	  <a href="{PHP.urr.user_id|cot_url('users', 'm=details&id=$this&tab=userpage')}">{PHP.L.All}</a>
			  </li>
			  	<!-- BEGIN: CATEGORY_ROWS -->
			  		<li class="centerall <!-- IF {PAGE_ROW_CAT_SELECT} -->active<!-- ENDIF -->">
			  				<a href="{PAGE_ROW_CAT_URL}">
			  						<!-- IF {PAGE_ROW_CAT_ICON} -->
			  							<img src="{PAGE_ROW_CAT_ICON}" alt="{PAGE_ROW_CAT_TITLE} ">
			  						<!-- ENDIF -->
			  						{PAGE_ROW_CAT_TITLE} 
			  					<span class="badge badge-inverse">{PAGE_ROW_CAT_COUNT_PAGE}</span>
			  				</a>

			  		</li>
			  	<!-- END: CATEGORY_ROWS -->
			</ul>
			<hr>		
		<!-- BEGIN: PAGE_ROWS -->
			<div class="media">
				<!-- IF {PAGE_ROW_MAVATAR.1} -->
				 	<a class="pull-left" href="{PAGE_ROW_URL}">
				   		 <img class="media-object" src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 200, 200, crop)}">
				 	</a>
			 	 <!-- ENDIF -->
			  <div class="media-body">
			    <h4 class="media-heading"><a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a><span class="label label-info pull-right">{PAGE_ROW_LOCALSTATUS}</span></h4>
			    <span class="pull-left">[<a href="{PAGE_ROW_CATURL}">{PAGE_ROW_CATTITLE}</a>]</span>
			    <span class="pull-right">{PAGE_ROW_DATE}</span>
			    	<div class="clearfix"></div>
			   	<p>{PAGE_ROW_TEXT_CUT}</p>
			  </div>
			</div>
		<hr>
		<!-- END: PAGE_ROWS -->	

				<!-- IF {PAGENAV_COUNT} > 0 -->	
					<div class="pagination"><ul>{PAGENAV_PAGES}</ul></div>
				<!-- ELSE -->
					<div class="alert">{PHP.L.userpage_empty}</div>
				<!-- ENDIF -->
</div>
<!-- END: MAIN -->
