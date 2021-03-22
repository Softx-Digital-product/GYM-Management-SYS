<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="paytm_java.PaytmConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.paytm.pg.merchant.*"%> 
   
<%
System.out.println(PaytmConstants.MERCHANT_KEY);

Enumeration<String> paramNames = request.getParameterNames();
Map<String, String[]> mapData = request.getParameterMap();
TreeMap<String,String> parameters = new TreeMap<String,String>();
String paytmChecksum =  "";
while(paramNames.hasMoreElements()) {
	String paramName = (String)paramNames.nextElement();
	parameters.put(paramName,mapData.get(paramName)[0]);	
}
System.out.println(PaytmConstants.MERCHANT_KEY);
parameters.put("MID",PaytmConstants.MID);
parameters.put("CHANNEL_ID",PaytmConstants.CHANNEL_ID);
parameters.put("INDUSTRY_TYPE_ID",PaytmConstants.INDUSTRY_TYPE_ID);
parameters.put("WEBSITE",PaytmConstants.WEBSITE);
parameters.put("MOBILE_NO","9876543210");
parameters.put("EMAIL","ehackers04@gmail.com");
parameters.put("CALLBACK_URL", "http://localhost:1010/Gym-Management-System/pgResponse.jsp");
//parameters.put("CALLBACK_URL","http://localhost:8080/paytm_java/paid.jsp");

System.out.println(parameters);
try {
	//paytmChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum(PaytmConstants.MERCHANT_KEY,parameters);
	paytmChecksum = PaytmChecksum.generateSignature(parameters,PaytmConstants.MERCHANT_KEY);
	//paytmChecksum = PaytmChecksum.generateSignature(PaytmConstants.MERCHANT_KEY,parameters);

	System.out.println("generateSignature Returns: " + paytmChecksum);
	//System.out.println("generateSignature Returns: " + checkSum);
	//0String checkSum =  CheckSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum(PaytmConstants.MERCHANT_KEY, parameters);
	
	
	StringBuilder outputHtml = new StringBuilder();
	outputHtml.append("<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>");
	outputHtml.append("<html>");
	outputHtml.append("<head>");
	outputHtml.append("<title>Merchant Check Out Page</title>");
	outputHtml.append("</head>");
	outputHtml.append("<body>");
	outputHtml.append("<center><h1>Please do not refresh this page...</h1></center>");
	outputHtml.append("<form method='post' action='"+ PaytmConstants.PAYTM_URL +"' name='f1'>");
	outputHtml.append("<table border='1'>");
	outputHtml.append("<tbody>");

	for(Map.Entry<String,String> entry : parameters.entrySet()) {
		String key = entry.getKey();
		String value = entry.getValue();
		outputHtml.append("<input type='hidden' name='"+key+"' value='" +value+"'>");
	}  
	outputHtml.append("<input type='hidden' name='CHECKSUMHASH' value='"+paytmChecksum+"'>");
	outputHtml.append("</tbody>");
	outputHtml.append("</table>");
	outputHtml.append("<script type='text/javascript'>");
	outputHtml.append("document.f1.submit();");
	outputHtml.append("</script>");
	outputHtml.append("</form>");
	outputHtml.append("</body>");
	outputHtml.append("</html>");
	out.println(outputHtml);
		  
	}
	catch(Exception e) {
		out.println(e);
	}



%>
