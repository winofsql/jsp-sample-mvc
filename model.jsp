<%!
// *********************************************************
// ローカル関数
// *********************************************************
public String getData( HttpServletRequest request,String name ) {

	String value = request.getParameter( name );
	if ( value == null ) {
		value = "";
	}

	return value;
}
%>
