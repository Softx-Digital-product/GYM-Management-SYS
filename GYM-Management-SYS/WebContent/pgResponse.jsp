<%@page import="com.paytm.pg.merchant.PaytmChecksum"%>
<%@page import="paytm_java.PaytmConstants"%>
<%@page import="com.itextpdf.kernel.pdf.PdfDocument"%>
<%@page import="com.itextpdf.kernel.pdf.PdfWriter"%>
<%@page import="com.itextpdf.layout.Document,com.itextpdf.layout.element.Paragraph"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ page import="java.util.*,com.paytm.pg.merchant.*"%>   
<%-- <%@ page import="java.util.*,com.paytm.pg.merchant.CheckSumServiceHelper"%>--%>
<%

Enumeration<String> paramNames = request.getParameterNames();

Map<String, String[]> mapData = request.getParameterMap();
TreeMap<String,String> parameters = new TreeMap<String,String>();
String paytmChecksum = "";
while(paramNames.hasMoreElements()) {
	String paramName = (String)paramNames.nextElement();
	if(paramName.equals("CHECKSUMHASH")){
		paytmChecksum = mapData.get(paramName)[0];
	}else{
		parameters.put(paramName,mapData.get(paramName)[0]);
	}
}



//boolean isValideChecksum = false;
String outputHTML="";
try{
	//boolean isVerifySignature = paytmChecksum.verifySignature(paytmParams,PaytmConstants.MERCHANT_KEY, paytmChecksum);
	//isValideChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum(PaytmConstants.MERCHANT_KEY,parameters,paytmChecksum);
	 boolean isValideChecksum = PaytmChecksum.verifySignature(parameters,PaytmConstants.MERCHANT_KEY,paytmChecksum);
	// if (isVerifySignature) {
		//	System.out.append("Checksum Matched");
		//	outputHTML = parameters.toString();
		//} else {
		//	System.out.append("Checksum Mismatched");
		//}

	 
	 if(isValideChecksum && parameters.containsKey("RESPCODE")){
		if(parameters.get("RESPCODE").equals("01")){
			outputHTML = parameters.toString();
		}else{
			
			outputHTML="<b>Payment Failed.</b>";
			out.print(parameters.get("RESPCODE"));
			out.print(isValideChecksum);
			
		}
	}else{
		outputHTML="<b>Checksum mismatched.</b>";
	}  
}catch(Exception e){
	outputHTML=e.toString();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment-Status</title>
</head>
<body>
<!--  
{BANKNAME=WALLET, BANKTXNID=64257531, CURRENCY=INR, GATEWAYNAME=WALLET, MID=TGeDAI61900420016194, ORDERID=ORDS_246374, PAYMENTMODE=PPI,
 RESPCODE=01, RESPMSG=Txn Success, STATUS=TXN_SUCCESS, TXNAMOUNT=1299.00, TXNDATE=2021-03-19 13:53:24.0, TXNID=20210319111212800110168313502474610}
-->
<%=outputHTML %>
<br>
<% 

String path="C://Users//akash//Desktop//JAVA -GYM//Gym-Management-System//WebContent//Data//Invoice.pdf";

PdfWriter writer = new PdfWriter(path);
PdfDocument pdfDoc = new PdfDocument(writer);
 pdfDoc.addNewPage();  

 String message = "Thanks For Using... ";
 
 String data=outputHTML;
 String strMain =data; 
 String[] arrSplit_3 = strMain.split(",");
 
  Document document = new Document(pdfDoc);  
 
     for (int i=0; i < arrSplit_3.length; i++){
      // System.out.println(arrSplit_3[i]);
       Paragraph paragraph1 = new Paragraph(arrSplit_3[i]); 
     	out.println("<br><br>"+arrSplit_3[i]);
     	
       document.add(paragraph1);
       
       
     }
    // Paragraph paragraph2 = new Paragraph(message); 
     //document.add(paragraph2);
	  document.close(); 
           
 System.out.println("PDF Created");  

 %>	<br><br><br>
	<a href="Data/Invoice.pdf" download style="padding:20px; color:white; Background-color:Green;">Downlaod Invoice</a>
	<a href="Membership.jsp"style="padding:20px; color:white; Background-color:Blue;">Return Back</a>
</body>
</html>