<%@ page
    language="java"
    import="java.util.*"
    contentType="text/html;charset=utf-8" %>
<%@ include file="model.jsp" %>
<%
// *********************************************************
// ページ処理
// *********************************************************
request.setCharacterEncoding("utf-8");

// *************************************
// 配列
// *************************************
String[] month1 = {
    "睦月","如月","弥生","卯月","皐月","水無月",
    "文月","葉月","長月","神無月","霜月","師走"
};

String[] month2 = {
    "January","February","March","April","May","June",
    "July","August","September","October","November","December"
};

// *************************************
// month1 => List に変換 ( 追加不可 )
// *************************************
List<String> listMonth1 = Arrays.asList( month1 );

// *************************************
// 追加可能な ArrayList に再変換
// *************************************
ArrayList<String> listMonth2 = new ArrayList( listMonth1 );

// *************************************
// 表示部分に埋め込むための文字列用
// *************************************
StringBuilder sb = new StringBuilder();

// *************************************
// GET ボタンをクリックした場合
// *************************************
if ( request.getMethod().equals( "GET" ) ) {

    sb.append( getData( request, "field1") );

}
// *************************************
// POST ボタンをクリックした場合
// *************************************
if ( request.getMethod().equals( "POST" ) ) {

    for( String value : month2 ) {
    
        // 変更可能な ArrayList に 英語月名を追加
        listMonth2.add( value );
        
    }

    // forEach + ラムダ式 で表示用文字列を作成
    listMonth2.forEach( (value) -> {
    
        sb.append( String.format( "%s - %s<br>", value, getData( request, "field2") )); 

    });

}

// *************************************
// 画面定義
// *************************************
%>
<%@ include file="view.jsp" %>
