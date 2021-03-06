<%@ page contentType="text/html;charset=UTF-8" language="java"
	errorPage="../common/error.jsp"%>
<%@include file="../common/common.jsp"%>
<html>
<head>
<p:link title="修改产品"/>
<script language="JavaScript" src="../js/JCheck.js"></script>
<script language="JavaScript" src="../js/common.js"></script>
<script language="JavaScript" src="../js/public.js"></script>
<script language="JavaScript" src="../product_js/product.js"></script>
<script language="javascript">
function addBean()
{
	submit('确定修改产品?', null, checkDuplicate);
}

</script>

</head>
<body class="body_class">
<form name="addApply" action="../product/product.do?method=updateProduct" 
	method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="${bean.id}">
<input type="hidden" name="mainProvider" value="${bean.mainProvider}">
<input type="hidden" name="assistantProvider1" value="${bean.assistantProvider1}">
<input type="hidden" name="assistantProvider2" value="${bean.assistantProvider2}">
<input type="hidden" name="assistantProvider3" value="${bean.assistantProvider3}">
<input type="hidden" name="assistantProvider4" value="${bean.assistantProvider4}">
<p:navigation
	height="22">
	<td width="550" class="navigation"><span style="cursor: pointer;"
		onclick="javascript:history.go(-1)">产品管理</span> &gt;&gt; 修改产品</td>
	<td width="85"></td>
</p:navigation> <br>

<p:body width="98%">

	<p:title>
		<td class="caption"><strong>产品基本信息：</strong></td>
	</p:title>

	<p:line flag="0" />

	<p:subBody width="100%">
		<p:class value="com.china.center.oa.product.bean.ProductBean" opr="1"/>

		<p:table cells="2">

			<p:pro field="name" cell="0" innerString="size=60 readonly=true"/>
			
			<p:pro field="code" cell="0" innerString="size=60 readonly=true"/>
			
			<p:pro field="abstractType" innerString="readonly=true">
				<p:option type="productAbstractType"/>
			</p:pro>
			
			<p:pro field="type" innerString="onchange=typeChange() readonly=true">
				<p:option type="productType"/>
			</p:pro>
			
			<p:pro field="ptype">
				<p:option type="productPtype"/>
			</p:pro>
			
			<p:pro field="ctype">
				<p:option type="productCtype"/>
			</p:pro>
			
			<p:pro field="stockType">
				<p:option type="productStockType"/>
			</p:pro>

			<p:pro field="typeName">
				<p:option type="116"/>
			</p:pro>
			<p:pro field="specification"/>
			<p:pro field="model"/>
			
			<p:pro field="amountUnit">
				<p:option type="117"/>
			</p:pro>
			<p:pro field="weightUnit">
				<p:option type="118"/>
			</p:pro>
			<p:pro field="cubageUnit">
				<p:option type="119"/>
			</p:pro>
			<p:pro field="version"/>
			<p:pro field="design"/>
			<p:pro field="materielSource"/>
			<p:pro field="storeUnit">
				<p:option type="120"/>
			</p:pro>
			<p:pro field="abc"/>
			<p:pro field="batchModal">
				<p:option type="115"/>
			</p:pro>
			<p:pro field="checkDays">
				<p:option type="[1,30]"/>
			</p:pro>
			<p:pro field="maxStoreDays">
				<p:option type="[1,30]"/>
			</p:pro>
			<p:pro field="safeStoreDays">
				<p:option type="[1,30]"/>
			</p:pro>
			<p:pro field="makeDays">
				<p:option type="[1,30]"/>
			</p:pro>
			<p:pro field="flowDays">
				<p:option type="[1,30]"/>
			</p:pro>
			<p:pro field="minAmount">
				<p:option type="[1,100]"/>
			</p:pro>
			<p:pro field="assembleFlag"/>			
			<p:pro field="consumeInDay"/>
			<p:pro field="orderAmount"/>
			
			<p:pro field="mainProvider" innerString="readonly=true" value="${bean.mainProviderName}" cell="0">
				<input type="button" value="&nbsp;...&nbsp;" name="qout" id="qout"
                    class="button_class" onclick="selectProvider(this, 0)">&nbsp;&nbsp;
			</p:pro>
			
			
			<p:pro field="assistantProvider1" innerString="readonly=true" value="${bean.assistantProviderName1}">
				<input type="button" value="&nbsp;...&nbsp;" name="qout" id="qout"
                    class="button_class" onclick="selectProvider(this, 1)">&nbsp;&nbsp;
			</p:pro>
			<p:pro field="assistantProvider2" innerString="readonly=true" value="${bean.assistantProviderName2}">
				<input type="button" value="&nbsp;...&nbsp;" name="qout" id="qout"
                    class="button_class" onclick="selectProvider(this, 2)">&nbsp;&nbsp;
			</p:pro>
			<p:pro field="assistantProvider3" innerString="readonly=true" value="${bean.assistantProviderName3}">
				<input type="button" value="&nbsp;...&nbsp;" name="qout" id="qout"
                    class="button_class" onclick="selectProvider(this, 3)">&nbsp;&nbsp;
			</p:pro>
			<p:pro field="assistantProvider4" innerString="readonly=true" value="${bean.assistantProviderName4}">
                <input type="button" value="&nbsp;...&nbsp;" name="qout" id="qout"
                    class="button_class" onclick="selectProvider(this, 4)">&nbsp;&nbsp;
            </p:pro>
			
			<p:pro field="sailType">
				<p:option type="productSailType"/>
			</p:pro>
			
			<p:pro field="adjustPrice">
				<p:option type="productAjustPrice"/>
			</p:pro>
			
			<p:pro field="financeType">
				<p:option type="113"/>
			</p:pro>
			
			<p:pro field="dutyType">
				<p:option type="114"/>
			</p:pro>
			
			<p:cell title="金(克)">
			<input type=text name='cost' id ='cost' value="${bean.cost}" oncheck="notNone;"  maxlength="100" > <font color='#FF0000'>*</font>
			</p:cell>
			
			<p:cell title="银(克)">
			<input type=text name='planCost' id ='planCost' value="${bean.planCost}" oncheck="notNone;"  maxlength="100" > <font color='#FF0000'>*</font>
			</p:cell>			

			<p:pro field="batchPrice" innerString="readonly=true"/>
			<p:pro field="sailPrice" innerString="readonly=true"/>
			<p:pro field="checkFlag"/>
			
			<p:pro field="checkType">
				<p:option type="productCheckType"/>
			</p:pro>
			<p:pro field="checkStandard" cell="0">
				<p:option type="121"/>
			</p:pro>
			
			<p:pro field="picPath" cell="0" innerString="size=60 class=button_class"/>
			
			<c:if test="${fn:length(bean.picPath) > 0}">
			<p:tr align="left">
				<img src="${rootUrl}pic${bean.picPath}">
			</p:tr>
			</c:if>
			
			<p:pro field="reserve1"/>
			<p:pro field="reserve2"/>
			<p:pro field="reserve3"/>
			
			<p:pro field="reserve4" innerString="readonly=true">
                <p:option type="pubManagerType" empty="true"/>
            </p:pro>
            
			<p:pro field="reserve5">
                <p:option type="productStep" empty="false"/>
            </p:pro>
            
			<p:pro field="reserve6"/>
			
			<p:pro field="description" cell="0" innerString="rows=3 cols=55" />

		</p:table>
	</p:subBody>

	<p:line flag="1" />

	<p:button leftWidth="100%" rightWidth="0%">
		<div align="right"><input type="button" class="button_class" id="ok_b"
			style="cursor: pointer" value="&nbsp;&nbsp;确 定&nbsp;&nbsp;"
			onclick="addBean()"></div>
	</p:button>

	<p:message/>
</p:body></form>
</body>
</html>

