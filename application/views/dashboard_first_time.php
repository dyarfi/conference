<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<section id="dashboard" class="dashboard">
    <div class="row">
        
                <!--BEGIN TABS-->
				<div class="tabbable tabbable-custom tabbable-full-width">
					<ul class="nav nav-tabs">
						<li class="active">
							<a data-toggle="tab" href="#tab_1_1">Dashboard</a>
						</li>
						<li class="account-btn">
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
                                            <div class="column">
                                                <blockquote class="boxed-grey">Before you can continue please complete your <a href="" onclick="$('.account-btn a').addClass('active').click(); return false;">account profile</a></blockquote>
                                            </div>
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
                                                <fieldset class="hidden"><legend>Attachment</legend>
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
											<span class="after"></span>
										</li>
										<!--li>
											<a href="#tab_3-3" data-toggle="tab">
												<i class="fa fa-lock"></i> Change Password
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
													<label class="control-label">Name</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                                        <input type="text" class="form-control" name="name" placeholder="<?php echo $this->participant->name;?>" value="<?php echo $this->participant->name;?>">
                                                    </div>    
												</div>
												<div class="form-group">
													<label class="control-label" for="password">Password</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                                        <input type="password" class="form-control" name="password" placeholder="Password" value="">
                                                    </div>    
												</div>
                                                <div class="form-group">
                                                    <label class="control-label" for="password_confirm">Confirm Password</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                                        <input type="password" class="form-control" name="password_confirm" placeholder="Confirm Password" value="">
                                                    </div>
												</div>
												<div class="form-group">
													<label class="control-label">Phone Number</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
                                                        <input type="text" class="form-control" name="phone" placeholder="<?=$user_profile->phone;?>" value="<?=$user_profile->phone;?>">
                                                    </div>    
												</div>
												<div class="form-group">
													<label class="control-label">Research Area</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="glyphicon glyphicon-map-marker"></span></span>
                                                        <input type="text" class="form-control" name="research_area" placeholder="Design, Web etc.">
                                                    </div>    
												</div>
												<div class="form-group">
													<label class="control-label">Occupation</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="glyphicon glyphicon-dashboard"></span></span>
                                                        <input type="text" class="form-control" name="division" placeholder="<?=$user_profile->division;?>" value="<?=$user_profile->division;?>">
                                                    </div>    
												</div>
												<div class="form-group">
													<label class="control-label">About</label>
		<textarea name="about" placeholder="<?=$user_profile->about;?>" rows="3" cols="5" class="form-control"><?=$user_profile->about;?></textarea>
												</div>
												<div class="form-group">
													<label class="control-label">Website</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="glyphicon glyphicon-link"></span></span>
                                                        <input name="website" type="text" class="form-control" placeholder="http://" value="<?=$user_profile->website;?>">
                                                    </div>    
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
                                        <div class="tab-pane hidden" id="tab_3-3">
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
					</div>
				</div>
				<!--END TABS-->
        
    </div>
</section>