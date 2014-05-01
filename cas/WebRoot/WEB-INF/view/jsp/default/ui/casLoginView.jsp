<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<jsp:directive.include file="includes/top.jsp"/> 
	<div id="content"> 
		<div id="content-inner">
			<div id="reg_content">
				<form:form method="post" id="fm1" cssClass="fm-v clearfix" commandName="${commandName}" htmlEscape="true">
					<p id="errorWrapper">
						<%-- <span id="error" class="pass-generalError"></span> --%>
                    	<h2><spring:message code="screen.welcome.instructions" /></h2>
                    	<form:errors path="*" id="msg" cssClass="errors" element="div" />
					</p>
					<p id="account" class="pass-form-item" style="display:">
						<label id="accountLabel" class="pass-label pass-label-account">邮箱</label>
						<c:if test="${not empty sessionScope.openIdLocalId}">
							<strong>${sessionScope.openIdLocalId}</strong>
							<input type="hidden" id="username" name="username" class="pass-text-input pass-text-input-account" autocomplete="off" value="${sessionScope.openIdLocalId}" placeholder="邮箱" />
						</c:if>
						<c:if test="${empty sessionScope.openIdLocalId}">
							<spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
							<form:input id="username" name="username" class="pass-text-input pass-text-input-account" autocomplete="off" tabindex="1" accesskey="${userNameAccessKey}" path="username" htmlEscape="true" placeholder="邮箱" />
						</c:if>
						
						<span id="account_clearbtn" class="pass-clearbtn pass-clearbtn-account" style="display:none;"></span>
						<span id="accountError" class="pass-item-error pass-item-error-account" style="display: none;"></span>
						<span id="accountSucc" class="pass-item-succ pass-item-succ-account" style="display: none;"></span>
					</p>
					<p id="password" class="pass-form-item pass-form-item-password" style="display:">
						<label class="pass-label pass-label-password">密码</label>
					<!-- 	<input id="password" type="password" name="password" class="pass-text-input pass-text-input-password" autocomplete="off" placeholder="密码"> -->
						
						<spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
						<form:password id="password" name="password" class="pass-text-input pass-text-input-password" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="fase" autocomplete="off" placeholder="密码" />
					
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
						<!--<input id="reg_submit" name="submit" type="submit" value="登录" class="pass-button pass-button-submit"> --!>
						<!-- <input id="reg_submit" name="reset" type="reset" value="重置" class="pass-button pass-button-submit">  -->
						<input type="hidden" name="lt" value="${loginTicket}" />
						<input type="hidden" name="execution" value="${flowExecutionKey}" />
						<input type="hidden" name="_eventId" value="submit" />
                        <input id="btn-submit" name="submit" class="pass-button pass-button-submit" accesskey="l" value="登录" tabindex="4" type="submit" />
					</p>
<!-- 				</form> -->
					</form:form>
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
<jsp:directive.include file="includes/bottom.jsp" /> 