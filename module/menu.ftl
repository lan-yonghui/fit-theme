<@menuTag method="list">
<div _ngcontent-roi-c247="" class="vm-elements-ref ng-tns-c247-0">
	<header _ngcontent-roi-c247="" id="myvmware-header" class="header ng-tns-c247-0">
		<div _ngcontent-roi-c247="" class="branding ng-tns-c247-0">
			<a _ngcontent-roi-c247="" class="logo-wrapper ng-tns-c247-0 ng-star-inserted"
			href="https://www.fit2cloud.com" target="_blank">
				<#--  <img src="/themes/fit-theme/source/images/logo/logo-dark-FIT2CLOUD.svg" class="l-dark" width="120px" height="35" alt="FIT2CLOUD">  -->
				<img src="/themes/fit-theme/source/images/logo/logo-light-FIT2CLOUD.svg" class="l-light" width="120px"  height="35" alt="FIT2CLOUD">
			</a>
		</div>
		<div _ngcontent-roi-c247="" class="divider ng-tns-c247-0 ng-star-inserted">
		</div>
		<div _ngcontent-roi-c247="" class="header-nav ng-tns-c247-0 ng-star-inserted">
			<#list menus?sort_by('priority') as menu>
                <div _ngcontent-roi-c247="" ccdropdowncontainer="" class="ng-tns-c247-0 ng-star-inserted" style="position: initial; overflow: visible;">
                    <a _ngcontent-roi-c247="" class="nav-link ng-tns-c247-0" href="${menu.url}" target="${menu.target!}">
                        <span _ngcontent-roi-c247="" class="nav-text ng-tns-c247-0">
                            ${menu.name}
                        </span>
                    </a>
                </div>
			</#list>
		</div>
		<div _ngcontent-roi-c247="" class="header-actions ng-tns-c247-0">
			<div _ngcontent-roi-c247="" _nghost-roi-c241="" class="ng-tns-c247-0 ng-star-inserted">
				
				<a _ngcontent-roi-c241="" class="nav-link nav-icon-text profile-menu login-link ng-star-inserted">
					<span _ngcontent-roi-c241="" class="nav-text ng-star-inserted">
						注册
					</span>
				</a>

				<a _ngcontent-roi-c241="" class="nav-link nav-icon-text profile-menu ng-star-inserted">
					<span _ngcontent-roi-c241="" class="nav-text ng-star-inserted">
						登录
					</span>
				</a>

                <a _ngcontent-roi-c241="" class="nav-link nav-icon-text profile-menu ng-star-inserted">
					<span _ngcontent-roi-c241="" class="nav-text ng-star-inserted">
						
					</span>
				</a>

			</div>

		</div>
	</header>
</div>


</@menuTag>