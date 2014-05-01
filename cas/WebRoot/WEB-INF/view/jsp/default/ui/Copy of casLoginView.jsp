<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<jsp:include page="includes/top.jsp" flush="true"/> 
	<div id="content"> 
		<div id="content-inner">
			<div id="reg_content">
				<form autocomplete="off" id="fm1" action="rdf_cas/login" commandName="${commandName}" htmlEscape="true" method="POST">
					<p id="errorWrapper">
						<span id="error" class="pass-generalError"></span>
					</p>
					<p id="account" class="pass-form-item" style="display:">
						<label id="accountLabel" class="pass-label pass-label-account">邮箱</label>
						<input id="username" type="text" name="account_input" class="pass-text-input pass-text-input-account" autocomplete="off" placeholder="邮箱">
						<span id="account_clearbtn" class="pass-clearbtn pass-clearbtn-account" style="display:none;"></span>
						<span id="accountError" class="pass-item-error pass-item-error-account" style="display: none;"></span>
						<span id="accountSucc" class="pass-item-succ pass-item-succ-account" style="display: none;"></span>
					</p>
					<p id="password" class="pass-form-item pass-form-item-password" style="display:">
						<label class="pass-label pass-label-password">密码</label>
						<input id="password" type="password" name="password" class="pass-text-input pass-text-input-password" autocomplete="off" placeholder="密码">
						<span id="password_clearbtn" class="pass-clearbtn pass-clearbtn-password" style="display:none;"></span>
						<span id="passwordError" class="pass-item-error pass-item-error-password" style="display: none;"></span>
						<span class="pwd-strength-detail" style="display: none;">请输入密码</span>
						<span id="passwordSucc" class="pass-item-succ pass-item-succ-password" style="display:none;"></span>
						<div class="pwd-checklist-wrapper">
							<ul id="pwdChecklist" class="pwd-checklist">
								<li id="pwd_checklist_len" data-rule="len" class="pwd-checklist-item" style="display:none;">长度为6~14个字符</li>
								<li id="pwd_checklist_cha" data-rule="cha" class="pwd-checklist-item" style="display:none;">支持数字,大小写字母和标点符号</li>
								<li id="pwd_checklist_spa" data-rule="spa" class="pwd-checklist-item" style="display:none;">不允许有空格</li>
							</ul>
						</div>
					</p>
					<p id="password" class="pass-form-item pass-form-item-password" style="display:">
						<label class="pass-label pass-label-password">验证码</label>
						<input id="password" type="password" name="password" class="pass-text-input pass-text-input-password" autocomplete="off" placeholder="验证码">
						<span id="password_clearbtn" class="pass-clearbtn pass-clearbtn-password" style="display:none;"></span>
						<span id="passwordError" class="pass-item-error pass-item-error-password" style="display: none;"></span>
						<span class="pwd-strength-detail" style="display: none;">验证码</span>
						<span id="passwordSucc" class="pass-item-succ pass-item-succ-password" style="display:none;"></span>
						<div class="pwd-checklist-wrapper">
							<ul id="pwdChecklist" class="pwd-checklist">
								<li id="pwd_checklist_len" data-rule="len" class="pwd-checklist-item" style="display:none;">长度为6~14个字符</li>
								<li id="pwd_checklist_cha" data-rule="cha" class="pwd-checklist-item" style="display:none;">支持数字,大小写字母和标点符号</li>
								<li id="pwd_checklist_spa" data-rule="spa" class="pwd-checklist-item" style="display:none;">不允许有空格</li>
							</ul>
						</div>
					</p>
					<p id="isAgreeWrapper" class="pass-form-item pass-form-item-isAgree">
						<input name="isAgree" id="isAgree" type="checkbox" checked="checked" class="pass-checkbox-input pass-checkbox-isAgree" autocomplete="off">
						<label style="float: left;">我已阅读并接受</label>
						<a target="_blank" href="#" style="float: left;">《知识库系统使用协议》</a>
					</p>
					<p id="submitWrapper" class="pass-form-item pass-form-item-submit">
						<input id="reg_submit" name="submit" type="submit" value="登录" class="pass-button pass-button-submit">
						<!-- <input id="reg_submit" name="reset" type="reset" value="重置" class="pass-button pass-button-submit">  -->
					</p>
				</form>
			</div>
			<div id="reg_center"></div>
			<div id="reg_others">
				<div class="account3">
					<p style="clear: both; color: #666; font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;使用第三方账号登录：</p>
					<ul class="account-detail">
						<li>
							<a href="#" style="width: 120px; height: 24px;">
								<img src="images_rdf/Connect_logo_3.png" />
							</a>
						</li>
						<li>
						
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="includes/bottom.jsp" flush="true"/> 