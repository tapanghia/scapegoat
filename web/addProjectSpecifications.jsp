<%@include file = "commons.jspf"%>
<%@page import="com.marklabs.researchProject.ResearchProject"%>
<%@page import="com.marklabs.web.controllers.Constants"%>
<%
  ResearchProject[] previousPeriodProj = (ResearchProject[]) request.getAttribute(Constants.PREVIOUS_PERIOD_RESEARCH_PROJECTS);
%>
<html>
<head>
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
<script type="text/javascript" charset="utf-8">
$(function(){
	$('#generateMinBaseCost').click(function(event) {
	  $.ajax({
		   type: "POST",
		   url: "researchProject.htm",
		   data: "do=calculateMinBaseCost&designValue="+addProjectSpecs.design.value+"&fragranceValue="+addProjectSpecs.fragrance.value+"&persistenceValue="+addProjectSpecs.persistence.value+"&packagingValue="+addProjectSpecs.packaging.value+"&safetyValue="+addProjectSpecs.safety.value,
		   dataType: 'json',	
		   success: function(data){
		     $("input[name='minBaseCost']").val(data.minBaseCost);
		     $("input[name='requestedBaseCost']").val(data.minBaseCost);
		     $("input[name='budgetRequired']").val(data.budgetRequired);
		     $("input[name='budgetRequiredAtMinBaseCost']").val(data.budgetRequired);
		   }
		 });
  });
	$('#generateBudgetReq').click(function(event) {
	  $.ajax({
		   type: "POST",
		   url: "researchProject.htm",
		   data: "do=calculateReqBudgetOnReqBaseCost&budgetRequiredAtMinBaseCost="+addProjectSpecs.budgetRequiredAtMinBaseCost.value+"&minBaseCost="+addProjectSpecs.minBaseCost.value+"&requestedBaseCost="+addProjectSpecs.requestedBaseCost.value,
		   dataType: 'json',	
		   success: function(data){
		     $("input[name='budgetRequired']").val(data.budgetRequired);
		   }
		 });
  });
	$("select#previousPerProj").change(function(){
		  $.ajax({
			   type: "POST",
			   url: "researchProject.htm",
			   data: "do=getResearchProjectSpecs&selectedBaseProjectID="+addProjectSpecs.previousPerProj.options[previousPerProj.selectedIndex].id,
			   dataType: 'json',	
			   success: function(data){
			     $("input[name='design']").val(data.design);
			     $("input[name='fragrance']").val(data.fragrance);
			     $("input[name='persistence']").val(data.persistence);
			     $("input[name='packaging']").val(data.packaging);
			     $("input[name='safety']").val(data.safety);
			   }
			 });
	  });
	})
  function isChecked(checkBoxObj, selectObj) {
  	if (document.getElementById(checkBoxObj).checked) {
      	document.getElementById(selectObj).disabled = false;
  	} else { 
      	document.getElementById(selectObj).disabled = true;
    }
  }
</script>
</head>
<body>
<form id="addProjectSpecs" name="addProjectSpecs" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr style="color: rgb(76, 115, 152);">
    <td width="2%"><img src="images/pic.jpg"></td>
    <td width="50%" align="left">
    <div class="myexperttext">Project Specifications</div>
    </td>
  </tr>
	<tr>
		<td class="text-blue-01">Project Name: <br />
		<input type="text"  maxlength="5" name="projectName" id="projectName" /></td>
	</tr>
	<tr>
		<td class="text-blue-01" colspan="3"><br />
  		<input type="checkbox" name="useCompletedProject" id="useCompletedProject" onClick="javascript:isChecked('useCompletedProject', 'previousPerProj');" /> Use one of the completed projects displayed as a basis for the new Project.
		</td>
		<td class="text-blue-01" valign="bottom">
			<select id="previousPerProj" name="previousPerProj" disabled>
				<option id="-1" value="">Please select a value.</option>
				<% 
				if (previousPeriodProj != null && previousPeriodProj.length > 0) {
					for (int i = 0; i < previousPeriodProj.length; i++) {
				%>
						<option id="<%=previousPeriodProj[i].getId()%>" 
							value="<%=previousPeriodProj[i].getId()%>">
							<%=previousPeriodProj[i].getProjectName() %></option>
				<% 		
					}
				}
				%>
			</select></td>
	</tr>

	<tr>
		<td>Design: (1-100)<br />
		  <input type="text"  maxlength="3" name="design" id="design"/>
	  </td>
		<td>Fragrance: (1-100)<br />
		  <input type="text"  maxlength="3" name="fragrance" id=""fragrance""/>
	  </td>
		<td>Persistence: (1-100)<br />
		  <input type="text"  maxlength="3" name="persistence" id="persistence"/>
	  </td>
		<td>Packaging: (1-100)<br />
  		<input type="text"  maxlength="3" name="packaging" id="packaging"/>
		</td>
		<td>Safety: (1-100)<br />
		  <input type="text"  maxlength="3" name="safety" id="safety"/>
	  </td>
	</tr>
	<tr>
		<td><input name="generateMinBaseCost" id="generateMinBaseCost" type="button" class="button-01" value="Generate" /></td>
	</tr>
	<tr>
		<td>Minimum Base Cost:</td>
		<td><input type="text" name="minBaseCost" id="minBaseCost" readonly maxlength="5" /></td>
		
		<td>Requested Base Cost:</td>
		<td><input type="text" name="requestedBaseCost" id="requestedBaseCost" maxlength="5" /></td>
	</tr>
	<tr>
		<td><input name="generateBudgetReq" id="generateBudgetReq" type="button" class="button-01" value="Generate" /></td>
	</tr>
	<tr>
		<td>Budget Required:</td>
		<td>
  		<input type="text" name="budgetRequired" id="budgetRequired" readonly maxlength="10" />
  		<input type="hidden" name="budgetRequiredAtMinBaseCost" id="budgetRequiredAtMinBaseCost" readonly maxlength="10" />	
		</td>
	</tr>
</table>

</form>
</body>
</html>