function ValidateForm()
{
	if ((document.Transportation_Bulletins.bulletinNumber.value == "") && (document.Transportation_Bulletins.searchWords.value == ""))
	{
		alert("SORRY! You have not entered a search value.\n"
			  + "Please try again.")
		document.Transportation_Bulletins.bulletinNumber.focus()
		return false;
	}
	
	/* The query from TransportationBulletinDAO 
	 * is executed with a condition to exclude any records with "NULL" in the search string */
	
	/* if bulletin number field is blank and search word field is not blank, 
	 * set bulletin number value to NULL. */
	if ((document.Transportation_Bulletins.bulletinNumber.value == "") && (document.Transportation_Bulletins.searchWords.value != ""))
	{
		document.Transportation_Bulletins.bulletinNumber.value = "NULL";
	}
	
	/* if bulletin number field is not blank and search word field is blank, 
	 * set search word value to NULL. */
	if ((document.Transportation_Bulletins.bulletinNumber.value != "") && (document.Transportation_Bulletins.searchWords.value == ""))
	{ 
		document.Transportation_Bulletins.searchWords.value = "NULL"; 
	}
	
	/* convert search value to uppercase */
	document.Transportation_Bulletins.bulletinNumber.value = document.Transportation_Bulletins.bulletinNumber.value.toUpperCase();
	document.Transportation_Bulletins.searchWords.value = document.Transportation_Bulletins.searchWords.value.toUpperCase();
	
	document.Transportation_Bulletins.submit()
}
