<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<section id="dashboard" class="dashboard">
    <div class="row">
        
                <!--BEGIN TABS-->
				<div class="tabbable tabbable-custom tabbable-full-width">
					<ul class="nav nav-tabs">
						<li class="active">
							<a data-toggle="tab" href="#tab_1_1">Dashboard</a>
						</li>
						<li>
							<a data-toggle="tab" href="#tab_1_2">Account</a>
						</li>
					</ul>
					<div class="tab-content">
						<div id="tab_1_1" class="tab-pane active">
							<div class="row">
								<div class="col-md-12 col-lg-12">
									<div class="row">
										<div class="col-md-8 profile-info">
											<!--<h1><?=ACL::user()->name;?></h1>-->
											<p><?=$user_profile->about;?></p>
											<p><a href="#"><?=$user_profile->website;?></a></p>
											<ul class="list-inline">
												<?php if(!empty($user_profile->phone)) { ?>
												<li><i class="fa fa-phone"></i> <?=$user_profile->phone;?></li>
												<?php } ?>
												<?php if(!empty($user_profile->mobile_phone)) { ?>
												<li><i class="fa fa-mobile-phone"></i> <?=$user_profile->mobile_phone;?></li>
												<?php } ?>		
												<?php if(!empty($user_profile->division)) { ?>												
												<li><i class="fa fa-briefcase"></i> <?=$user_profile->division;?></li>
												<?php } ?>												
											</ul>
										</div>
										<!--end col-md-8-->										
									</div>
									<!--end row-->
                                    
									<div class="tabbable tabbable-custom tabbable-custom-profile">
										
										<div class="container">
											<div>
                                                <fieldset><legend>Conference</legend>
												<div class="portlet-body">                                                    
                                                    <?php if ($conference) { ?>
                                                    <div class="marginbot-10">
                                                        <div class="boxed-grey">
                                                            <b>Upcoming :</b>
                                                            <div class="marginbot-10"><?php echo $conference->subject;?></div>
                                                            <div><a href="#" class="btn btn-primary clearfix">Join the Conference<a></div>
                                                        </div>
                                                    </div>
                                                    <?php } ?>
                                                    
                                                    <?php if ($part_conferences) { ?>
                                                    <table class="table table-striped table-bordered table-advance table-hover">
													<thead>
													<tr>
														<th><i class="fa fa-briefcase"></i> Conference</th>
														<th class="hidden-xs"><i class="fa fa-question"></i> Description</th>
														<th><i class="fa fa-bookmark"></i> Status</th>
													</tr>
													</thead>
													<tbody>
                                                    <?php foreach ($part_conferences as $conferences) {?>
                                                        <tr>
                                                            <td>
                                                                <a href="#">
                                                                    <?php echo word_limiter(strip_tags($conferences->subject),3);?>
                                                                </a>
                                                            </td>
                                                            <td>
                                                                <a href="#">
                                                                    <?php echo word_limiter(strip_tags($conferences->description),3);?>
                                                                </a>
                                                            </td>
                                                            <td>
                                                                <a href="#">
                                                                    <?php echo ($conferences->status) ? '<span class="label label-success label-sm">Verified</span>' : '<span class="label label-warning label-sm">Not Verified</span>';?>
                                                                    <!-- labels 
                                                                    <span class="label label-danger label-sm">
                                                                        Overdue
                                                                    </span>
                                                                    <span class="label label-warning label-sm">
                                                                        Pending
                                                                    </span>
                                                                    -->
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    <?php }
                                                    } ?>
                                                    </tbody>
													</table>
												</div>
                                                </fieldset>
                                            </div>
											<!--tab-pane-->
											<div>
                                                <fieldset><legend>Attachment</legend>
												<div id="tab_1_1_1" class="tab-pane active">
													<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 290px;"><div data-rail-visible1="1" data-always-visible="1" data-height="290px" class="scroller" style="overflow: hidden; width: auto; height: 290px;">
														<ul class="feeds list-unstyled">
															<li>
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-success">
																				<i class="fa fa-bell-o"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				 You have 4 pending tasks.
																				<span class="label label-danger label-sm">
																					 Take action <i class="fa fa-share"></i>
																				</span>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2 hidden">
																	<div class="date">
																		 Just now
																	</div>
																</div>
															</li>
															<li>
																<a href="#">
																	<div class="col1">
																		<div class="cont">
																			<div class="cont-col1">
																				<div class="label label-success">
																					<i class="fa fa-bell-o"></i>
																				</div>
																			</div>
																			<div class="cont-col2">
																				<div class="desc">
																					 New version v1.4 just lunched!
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="col2 hidden">
																		<div class="date">
																			 20 mins
																		</div>
																	</div>
																</a>
															</li>
															<li>
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-danger">
																				<i class="fa fa-bolt"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				 Database server #12 overloaded. Please fix the issue.
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2 hidden">
																	<div class="date">
																		 24 mins
																	</div>
																</div>
															</li>
															<li>
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-info">
																				<i class="fa fa-bullhorn"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				 New order received. Please take care of it.
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2 hidden">
																	<div class="date">
																		 30 mins
																	</div>
																</div>
															</li>
															<li>
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-success">
																				<i class="fa fa-bullhorn"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				 New order received. Please take care of it.
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2 hidden">
																	<div class="date">
																		 40 mins
																	</div>
																</div>
															</li>
															<li>
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-warning">
																				<i class="fa fa-plus"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				 New user registered.
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2 hidden">
																	<div class="date">
																		 1.5 hours
																	</div>
																</div>
															</li>
                                                        </ul>
													</div><div class="slimScrollBar" style="background: none repeat scroll 0% 0% rgb(187, 187, 187); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: none repeat scroll 0% 0% rgb(234, 234, 234); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
												</div>
                                                </fieldset>
											</div>
											<!--tab-pane-->
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--tab_1_2-->
						<div id="tab_1_2" class="tab-pane">
							<div class="row profile-account">
								<div class="col-md-3">
									<ul class="ver-inline-menu tabbable margin-bottom-10 list-unstyled">
										<li class="active">
											<a href="#tab_1-1" data-toggle="tab">
												<i class="fa fa-cog"></i> Personal info
											</a>
											<span class="after">
											</span>
										</li>
										<!--li>
											<a href="#tab_2-2" data-toggle="tab">
												<i class="fa fa-picture-o"></i> Change Avatar
											</a>
										</li-->
										<li>
											<a href="#tab_3-3" data-toggle="tab">
												<i class="fa fa-lock"></i> Change Password
											</a>
										</li>
										<!--li>
											<a href="#tab_4-4" data-toggle="tab">
												<i class="fa fa-eye"></i> Privacy Settings
											</a>
										</li-->
									</ul>
								</div>
								<div class="col-md-9">
									<div class="tab-content">
										<div class="tab-pane active" id="tab_1-1">
											<form action="" method="POST" id="user-form" class="user-form">
												<input type="hidden" value="<?=$user_profile->user_id;?>" name="user_id"/>
												<div class="form-group">
													<label class="control-label">First Name</label>
													<input type="text" class="form-control" name="first_name" placeholder="<?=$user_profile->first_name;?>" value="<?=$user_profile->first_name;?>">
												</div>
												<div class="form-group">
													<label class="control-label">Last Name</label>
													<input type="text" class="form-control" name="last_name" placeholder="<?=$user_profile->first_name;?>" value="<?=$user_profile->last_name;?>">
												</div>												
												<div class="form-group">
													<label class="control-label">Phone Number</label>
													<input type="text" class="form-control" name="phone" placeholder="<?=$user_profile->phone;?>" value="<?=$user_profile->phone;?>">
												</div>
												<div class="form-group">
													<label class="control-label">Mobile Number</label>
													<input type="text" class="form-control" name="mobile_phone" placeholder="<?=$user_profile->mobile_phone;?>" value="<?=$user_profile->mobile_phone;?>">
												</div>
												<!--div class="form-group">
													<label class="control-label">Interests</label>
													<input type="text" class="form-control" placeholder="Design, Web etc.">
												</div-->
												<div class="form-group">
													<label class="control-label">Occupation</label>
													<input type="text" class="form-control" name="division" placeholder="<?=$user_profile->division;?>" value="<?=$user_profile->division;?>">
												</div>
												<div class="form-group">
													<label class="control-label">About</label>
		<textarea name="about" placeholder="<?=$user_profile->about;?>" rows="3" cols="5" class="form-control"><?=$user_profile->about;?></textarea>
												</div>
												<div class="form-group">
													<label class="control-label">Website</label>
													<input name="website" type="text" class="form-control" placeholder="<?=$user_profile->website;?>" value="<?=$user_profile->website;?>">
												</div>
												<div class="form-group">
													<label class="control-label">Captcha <a class="reload_captcha" rel="<?=base_url()?>admin/user/reload_captcha" href="javascript:;"><?php echo $captcha['image'];?></a></label>
													<input name="captcha" type="text" class="form-control" placeholder="Captcha" value="">
												</div>																							
												<div class="row margiv-top-10">
													<div class="col-md-4 col-lg-4 col-xs-4 pull-left">
														<button class="btn green">
															 Save Changes
														</button>
													</div>
													<!--button class="btn default">
														 Cancel
													</button-->
													<div class="col-md-8 col-lg-8 col-xs-7 pull-right">
														<div class="msg"></div>
													</div>
												</div>
											</form>
										</div>
										<div class="tab-pane hidden" id="tab_2-2">
											<p>
												 Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
											</p>
											<form role="form" action="#" id="" class="user-form">
												<div class="form-group">
													<div style="width: 310px;" class="thumbnail">
														<img alt="" src="http://www.placehold.it/310x170/EFEFEF/AAAAAA&amp;text=no+image">
													</div>
													<div data-provides="fileupload" class="margin-top-10 fileupload fileupload-new">
														<div class="input-group input-group-fixed">
															<span class="input-group-btn">
																<span class="uneditable-input">
																	<i class="fa fa-file fileupload-exists"></i>
																	<span class="fileupload-preview">
																	</span>
																</span>
															</span>
															<span class="btn default btn-file">
																<span class="fileupload-new">
																	<i class="fa fa-paper-clip"></i> Select file
																</span>
																<span class="fileupload-exists">
																	<i class="fa fa-undo"></i> Change
																</span>
																<input type="file" class="default">
															</span>
															<a data-dismiss="fileupload" class="btn red fileupload-exists" href="#">
																<i class="fa fa-trash-o"></i> Remove
															</a>
														</div>
													</div>
													<span class="label label-danger">
														 NOTE!
													</span>
													<span>
														 Attached image thumbnail is supported in Latest Firefox, Chrome, Opera, Safari and Internet Explorer 10 only
													</span>
												</div>
												<div class="margin-top-10">
													<a class="btn green" href="#">
														 Submit
													</a>
													<a class="btn default" href="#">
														 Cancel
													</a>
												</div>
											</form>
										</div>
										<div class="tab-pane" id="tab_3-3">
                                            <div class="column" style="height: 680px">
                                                <form action="#" id="user-form-password" class="user-form-password">											<input type="hidden" class="form-control" id="user_id" name="user_id" value="<?=$user->id;?>">	
                                                    <input type="hidden" class="form-control" id="username" name="username" value="<?=$user->username;?>">
                                                    <div class="form-group">
                                                        <label class="control-label">Current Password</label>
                                                        <input type="password" class="form-control" name="password" id="password" value="">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label">New Password</label>
                                                        <input type="password" class="form-control" name="password1" id="password1" value="">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label">Re-type New Password</label>
                                                        <input type="password" class="form-control" name="password2" id="password2" value="">
                                                    </div>
                                                    <div class="margin-top-10">
                                                        <button type="submit" class="btn green"> Change Password </button>
                                                        <!--a class="btn default" href="#">Cancel</a-->
                                                        <div class="col-md-8 col-lg-8 col-xs-7 pull-right">
                                                            <div class="msg"></div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
										</div>
										<div class="tab-pane hidden" id="tab_4-4">
											<form action="#">
												<table class="table table-bordered table-striped">
												<tbody><tr>
													<td>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus..</td>
													<td>
														<label class="uniform-inline">
														<div class="radio"><span><input type="radio" value="option1" name="optionsRadios1"></span></div>
														Yes </label>
														<label class="uniform-inline">
														<div class="radio"><span class="checked"><input type="radio" checked="" value="option2" name="optionsRadios1"></span></div>
														No </label>
													</td>
												</tr>
												<tr>
													<td>Enim eiusmod high life accusamus terry richardson ad squid wolf moon</td>
													<td>
														<label class="uniform-inline">
														<div class="checker"><span><input type="checkbox" value=""></span></div> Yes </label>
													</td>
												</tr>
												<tr>
													<td>Enim eiusmod high life accusamus terry richardson ad squid wolf moon</td>
													<td>
														<label class="uniform-inline">
														<div class="checker"><span><input type="checkbox" value=""></span></div> Yes </label>
													</td>
												</tr>
												<tr>
													<td>Enim eiusmod high life accusamus terry richardson ad squid wolf moon</td>
													<td>
														<label class="uniform-inline">
														<div class="checker"><span><input type="checkbox" value=""></span></div> Yes </label>
													</td>
												</tr>
												</tbody></table>
												<!--end profile-settings-->
												<div class="margin-top-10">
													<a class="btn green" href="#"> Save Changes</a>
													<a class="btn default" href="#"> Cancel</a>
												</div>
											</form>
										</div>
									</div>
								</div>
								<!--end col-md-9-->
							</div>
						</div>
						<!--end tab-pane-->
						<div id="tab_1_4" class="tab-pane hidden">
							<div class="row">
								<div class="col-md-12">
									<div class="add-portfolio">
										<span>502 Items sold this week</span>
										<a class="btn icn-only green" href="#">
											 Add a new Project <i class="m-icon-swapright m-icon-white"></i>
										</a>
									</div>
								</div>
							</div>
							<!--end add-portfolio-->
							<div class="row portfolio-block">
								<div class="col-md-5">
									<div class="portfolio-text">
										<img alt="" src="<?=base_url();?>assets/img/profile/portfolio/logo_metronic.jpg">
										<div class="portfolio-text-info">
											<h4>Metronic - Responsive Template</h4>
											<p> Lorem ipsum dolor sit consectetuer adipiscing elit.</p>
										</div>
									</div>
								</div>
								<div class="col-md-5 portfolio-stat">
									<div class="portfolio-info">
										 Today Sold
										<span>
											 187
										</span>
									</div>
									<div class="portfolio-info">
										 Total Sold
										<span>
											 1789
										</span>
									</div>
									<div class="portfolio-info">
										 Earns
										<span>
											 $37.240
										</span>
									</div>
								</div>
								<div class="col-md-2">
									<div class="portfolio-btn">
										<a class="btn bigicn-only" href="#">
											<span>
												 Manage
											</span>
										</a>
									</div>
								</div>
							</div>
							<!--end row-->
							<div class="row portfolio-block">
								<div class="col-md-5 col-sm-12 portfolio-text">
									<img alt="" src="<?=base_url();?>assets/img/profile/portfolio/logo_azteca.jpg">
									<div class="portfolio-text-info">
										<h4>Metronic - Responsive Template</h4>
										<p>
											 Lorem ipsum dolor sit consectetuer adipiscing elit.
										</p>
									</div>
								</div>
								<div class="col-md-5 portfolio-stat">
									<div class="portfolio-info">
										 Today Sold
										<span>
											 24
										</span>
									</div>
									<div class="portfolio-info">
										 Total Sold
										<span>
											 660
										</span>
									</div>
									<div class="portfolio-info">
										 Earns
										<span>
											 $7.060
										</span>
									</div>
								</div>
								<div class="col-md-2 col-sm-12 portfolio-btn">
									<a class="btn bigicn-only" href="#">
										<span>
											 Manage
										</span>
									</a>
								</div>
							</div>
							<!--end row-->
							<div class="row portfolio-block">
								<div class="col-md-5 portfolio-text">
									<img alt="" src="<?=base_url();?>assets/img/profile/portfolio/logo_conquer.jpg">
									<div class="portfolio-text-info">
										<h4>Metronic - Responsive Template</h4>
										<p>
											 Lorem ipsum dolor sit consectetuer adipiscing elit.
										</p>
									</div>
								</div>
								<div class="col-md-5 portfolio-stat">
									<div class="portfolio-info">
										 Today Sold
										<span>
											 24
										</span>
									</div>
									<div class="portfolio-info">
										 Total Sold
										<span>
											 975
										</span>
									</div>
									<div class="portfolio-info">
										 Earns
										<span>
											 $21.700
										</span>
									</div>
								</div>
								<div class="col-md-2 portfolio-btn">
									<a class="btn bigicn-only" href="#">
										<span>
											 Manage
										</span>
									</a>
								</div>
							</div>
							<!--end row-->
						</div>
						<!--end tab-pane-->
					</div>
				</div>
				<!--END TABS-->
        
    </div>
</section>