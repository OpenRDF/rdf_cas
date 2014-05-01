package org.jasig.cas.encoder;

import org.apache.log4j.Logger;
import org.jasig.cas.authentication.handler.PasswordEncoder;

import com.openrdf.utils.encrypt.Base64Encrpt;

/**
 * OpenRDF Password Encoder
 * 
 * @description 本程序用于来自谢先斌毕业论文，如有使用请联系作者。
 * @URL 代码地址：http://github.com/openRDF/rdfcode
 * @rdf com.openrdf.base
 * @dateTime 2014-4-7 上午23:29:10
 * @author XieXianbin
 * @email a.b@hotmail.com
 *
 */

public class OpenRDFPasswordEncoder implements PasswordEncoder {

	Logger logger = Logger.getLogger(OpenRDFPasswordEncoder.class);
	@Override
	public String encode(String password) {
		password = password.substring(0, password.length()-1);
		
		Base64Encrpt base64Encrpt = new Base64Encrpt();
		logger.debug(">>>>>password: " + password);
		// des
		return base64Encrpt.getEncString(password);
	}

}
