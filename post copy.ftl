<#include "module/macro.ftl">
<@layout title="${post.title!} - ${blog_title!}">
<#include "module/common-search.ftl">
<div class="content" >
	<article data-region-name="content" id="content">
		<div id="contentContainer" class="slds-grid slds-wrap slds-medium-nowrap slds-large-nowrap">
			<div id="contentMain" class="slds-col--padded slds-size--12-of-12 slds-medium-size--8-of-12 slds-large-size--8-of-12 comm-layout-column"
			 style="width:100%">
				<div id="articleContent">
					<div style="padding-bottom: 10px; padding-top: 10px" id="divLogo" class="visible-print">
                        <div class="slds-grid slds-wrap">
                            <div class="slds-col slds-size_1-of-4">
                                <#--  <img src="/themes/fit-theme/source/images/logo/logo-light-FIT2CLOUD.svg" alt="VMware" style="width: 70%; height: auto"
                                title="VMware" data-aura-rendered-by="195:0">  -->
                                <#--  <span style="font-size: 1.25em" data-aura-rendered-by="196:0">
                                    FIT2CLOUD 知识库
                                </span>  -->
                            </div>
                        </div>
                    </div>
                    <div id="article_content">
                        <div class="container">
                                
                            <h1 id="heading" class="article_title slds-wrap slds-page-header__title slds-align-middle">
                                <a class="post-title-link" href="${post.fullPath}"itemprop="url">${post.title}</a>
                            </h1>
                            <hr style="border-color: #dddddd; margin-top: 1rem" class="slds-p-bottom_xx-small">
                            <div class="slds-grid slds-wrap slds-is-relative">
                                <span class="slds-col slds-grid slds-wrap sub-header slds-p-right_medium">
                                    <span class="slds-p-right_large">
                                        <span class="text">${post.commentCount} 评论</span>
                                        <span class="line">/</span>
                                        <span class="text">${post.likes} 点赞</span>
                                        <span class="line">/</span>
                                        <span class="text" >${post.visits} 阅读</span> 
                                    </span>  
                                    <span class="slds-p-right_large">
                                        <#if post.tags?size gt 0>
                                            <#--  <b>
                                                标签
                                            </b>  -->
                                            <#list post.tags as tag>
                                                <#if tag?index lt 10>
                                                <span>
                                                    <i class="fa fa-tag">
                                                    </i>
                                                    <a href="${tag.fullPath}" class="tag">
                                                        &nbsp;${tag.name}
                                                    </a>
                                                </span>
                                                </#if>
                                            </#list>
                                        </#if>

                                        
                                    </span>
                                    
                                </span>
                                <span id="rightSideContent" class="slds-col slds-grid slds-wrap sub-header slds-p-vertical_xx-small slds-grid_align-end">
                                    <#--  <span id="likes" class="slds-p-right_large">
                                        <svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"
                                        preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36" height="16" width="16"
                                        fill="#007cbb" version="1.1">
                                            <title>
                                                thumbs-up-line
                                            </title>
                                            <path class="clr-i-outline clr-i-outline-path-1" d="M24,26c-2.92,1.82-7.3,4-9.37,4h-6a16.68,16.68,0,0,1-3.31-6.08A26.71,26.71,0,0,1,4,16h9V6a2.05,2.05,0,0,1,1.26-1.69c.77,2,2.62,6.57,4.23,8.72A11.39,11.39,0,0,0,24,16.91V14.78a9.13,9.13,0,0,1-3.91-3c-1.88-2.51-4.29-9.11-4.31-9.17A1,1,0,0,0,14.59,2C13.25,2.38,11,3.6,11,6v8H3a1,1,0,0,0-1,1,29,29,0,0,0,1.4,9.62c1.89,5.4,4.1,7.14,4.2,7.22a1,1,0,0,0,.61.21h6.42c2.43,0,6.55-2,9.37-3.63Z">
                                            </path>
                                            <path class="clr-i-outline clr-i-outline-path-2" d="M34,31H27a1,1,0,0,1-1-1V14a1,1,0,0,1,1-1h7Zm-6-2h4V15H28Z">
                                            </path>
                                            <rect fill-opacity="0" height="36" width="36" y="0" x="0">
                                            </rect>
                                        </svg>
                                        <span style="position: relative; top: 2px;">
                                            ${post.likes} 
                                        </span>
                                    </span>  -->
                                    
                                    <span class="slds-p-right_large">
                                        <b>
                                            最后更新:
                                        </b>
                                        <span id="lastModifiedDate">
                                            ${post.editTime?string('yyyy-MM-dd')}
                                        </span>
                                        <span id="lastModifiedByUser">
                                        </span>
                                    </span>
                                    <span class="slds-p-right_large">
                                        <b>
                                            作者:
                                        </b>
                                        <span id="articleCategory">
                                            ${user.nickname!}
                                        </span>
                                    </span>
                                    <span class="slds-p-right_large">
                                        <b>
                                            总字数:
                                        </b>
                                        <span id="articleViews">
                                            ${post.wordCount?c}
                                        </span>
                                    </span>
                                </span>
                            </div>
                            <div id="mtDisclaimer" class="alert-banner">
                            </div>
						</div>
						<div class="page-break">
						</div>
						<div class="container">
							<div class="header section_header slds-p-top_large slds-p-bottom_xx-small"
							style="cursor: pointer">
								<#--  <span id="chevronContainer">
									<svg xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"
									preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36" fill="#0095d3"
									height="20" width="20" class="chevron-down" id="chevronDiagram" version="1.1">
										<path d="M29.52,22.52,18,10.6,6.48,22.52a1.7,1.7,0,0,0,2.45,2.36L18,15.49l9.08,9.39a1.7,1.7,0,0,0,2.45-2.36Z">
										</path>
										<rect fill-opacity="0" height="36" width="36" y="0" x="0">
										</rect>
									</svg>
								</span>
								正文  -->
							</div>
							<div class="content">
								${post.formatContent!}
							</div>
						</div>
					
					</div>
				</div>
				<div id="articleFooter">
					<c-kb-article-feedback>
						<div c-kbarticlefeedback_kbarticlefeedback="" class="slds-box slds-align_absolute-center slds-m-vertical_xx-large">
							<div c-kbarticlefeedback_kbarticlefeedback="">
								<label c-kbarticlefeedback_kbarticlefeedback="" class="header-text slds-align_absolute-center">
									是否有帮助
								</label>
								<div c-kbarticlefeedback_kbarticlefeedback="" class="slds-m-vertical_small slds-grid slds-gutters slds-align_absolute-center">
									<button c-kbarticlefeedback_kbarticlefeedback="" name="yes" class="slds-button slds-p-right_medium fb-button">
										<c-kb-svg-icons c-kbarticlefeedback_kbarticlefeedback="" class="slds-m-horizontal_x-small">
											<svg fill="#007cbb" width="24" height="24" viewBox="0 0 36 36" xmlns="http://www.w3.org/2000/svg">
												<title>
													Yes
												</title>
												<path fill="#007cbb" d="M24,26c-2.92,1.82-7.3,4-9.37,4h-6a16.68,16.68,0,0,1-3.31-6.08A26.71,26.71,0,0,1,4,16h9V6a2.05,2.05,0,0,1,1.26-1.69c.77,2,2.62,6.57,4.23,8.72A11.39,11.39,0,0,0,24,16.91V14.78a9.13,9.13,0,0,1-3.91-3c-1.88-2.51-4.29-9.11-4.31-9.17A1,1,0,0,0,14.59,2C13.25,2.38,11,3.6,11,6v8H3a1,1,0,0,0-1,1,29,29,0,0,0,1.4,9.62c1.89,5.4,4.1,7.14,4.2,7.22a1,1,0,0,0,.61.21h6.42c2.43,0,6.55-2,9.37-3.63Z"
												class="clr-i-outline clr-i-outline-path-1">
												</path>
												<path fill="#007cbb" d="M34,31H27a1,1,0,0,1-1-1V14a1,1,0,0,1,1-1h7Zm-6-2h4V15H28Z"
												class="clr-i-outline clr-i-outline-path-2">
												</path>
												<rect x="0" y="0" width="36" height="36" fill-opacity="0">
												</rect>
											</svg>
										</c-kb-svg-icons>
										YES
									</button>
									<button c-kbarticlefeedback_kbarticlefeedback="" name="no" class="slds-button slds-p-left_medium fb-button">
										<c-kb-svg-icons c-kbarticlefeedback_kbarticlefeedback="" class="slds-m-horizontal_x-small">
											<svg fill="#007cbb" width="24" height="24" viewBox="0 0 36 36" xmlns="http://www.w3.org/2000/svg">
												<title>
													No
												</title>
												<path d="M12,10c2.92-1.82,7.3-4,9.37-4h6a16.68,16.68,0,0,1,3.31,6.08A26.71,26.71,0,0,1,32,20H23V30a2.05,2.05,0,0,1-1.26,1.69c-.77-2-2.62-6.57-4.23-8.72A11.39,11.39,0,0,0,12,19.09v2.13a9.13,9.13,0,0,1,3.91,3c1.88,2.51,4.29,9.11,4.31,9.17a1,1,0,0,0,1.19.63C22.75,33.62,25,32.4,25,30V22h8a1,1,0,0,0,1-1,29,29,0,0,0-1.4-9.62c-1.89-5.4-4.1-7.14-4.2-7.22A1,1,0,0,0,27.79,4H21.37C18.94,4,14.83,6,12,7.63Z"
												class="clr-i-outline clr-i-outline-path-1">
												</path>
												<path d="M2,5H9a1,1,0,0,1,1,1V22a1,1,0,0,1-1,1H2ZM8,7H4V21H8Z" class="clr-i-outline clr-i-outline-path-2">
												</path>
												<rect x="0" y="0" width="36" height="36" fill-opacity="0">
												</rect>
											</svg>
										</c-kb-svg-icons>
										NO
									</button>
								</div>
							</div>
						</div>
					</c-kb-article-feedback>
				</div>
			</div>
		</div>
	</article>
</div>
<#include "module/comment.ftl">
<@comment post=post type="post" />
</@layout>


