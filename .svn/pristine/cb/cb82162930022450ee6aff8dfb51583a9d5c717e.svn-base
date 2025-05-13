package com.rtd.operator.model;

import java.sql.Date;
import java.util.ArrayList;

public class AlertDetour {
	
	private String generalDesc;
	private String startDate;
	private String startTime;
	private String endDate;
	private String endTime;
	private int startTimeType;
	private int endTimeType;
	private String alertEventInfo;
	private String alertEventInfoRemaining;
	private Date updatedDate;
	private String updatedTime;
	private String alertCatDetail;
	private int alertCatID;
	private int alertEventID;
	private String routeLineAff;
	private String routeID;
	private int alertEventRouteID;
	private String routeType;
	private int alertTypeID;
	private String alertEventOpInfo;
	private String alertEventOpInfoRemaining;
	private ArrayList directionDTOs = new ArrayList(2);
	private ArrayList otherRouteLineAffDTOs = new ArrayList();
	
	/**
	 * default no arg constructor 
	 */
	public AlertDetour()
	{
		super();
	}

	public String getGeneralDesc() {
		return generalDesc;
	}

	public void setGeneralDesc(String generalDesc) {
		this.generalDesc = generalDesc;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public int getStartTimeType() {
		return startTimeType;
	}

	public void setStartTimeType(int startTimeType) {
		this.startTimeType = startTimeType;
	}

	public int getEndTimeType() {
		return endTimeType;
	}

	public void setEndTimeType(int endTimeType) {
		this.endTimeType = endTimeType;
	}

	public String getAlertEventInfo() {
		return alertEventInfo;
	}

	public void setAlertEventInfo(String alertEventInfo) {
		this.alertEventInfo = alertEventInfo;
	}

	public String getAlertEventInfoRemaining() {
		return alertEventInfoRemaining;
	}

	public void setAlertEventInfoRemaining(String alertEventInfoRemaining) {
		this.alertEventInfoRemaining = alertEventInfoRemaining;
	}

	public Date getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}

	public String getUpdatedTime() {
		return updatedTime;
	}

	public void setUpdatedTime(String updatedTime) {
		this.updatedTime = updatedTime;
	}

	public String getAlertCatDetail() {
		return alertCatDetail;
	}

	public void setAlertCatDetail(String alertCatDetail) {
		this.alertCatDetail = alertCatDetail;
	}

	public int getAlertCatID() {
		return alertCatID;
	}

	public void setAlertCatID(int alertCatID) {
		this.alertCatID = alertCatID;
	}

	public int getAlertEventID() {
		return alertEventID;
	}

	public void setAlertEventID(int alertEventID) {
		this.alertEventID = alertEventID;
	}

	public String getRouteLineAff() {
		return routeLineAff;
	}

	public void setRouteLineAff(String routeLineAff) {
		this.routeLineAff = routeLineAff;
	}

	public String getRouteID() {
		return routeID;
	}

	public void setRouteID(String routeID) {
		this.routeID = routeID;
	}

	public int getAlertEventRouteID() {
		return alertEventRouteID;
	}

	public void setAlertEventRouteID(int alertEventRouteID) {
		this.alertEventRouteID = alertEventRouteID;
	}

	public String getRouteType() {
		return routeType;
	}

	public void setRouteType(String routeType) {
		this.routeType = routeType;
	}

	public int getAlertTypeID() {
		return alertTypeID;
	}

	public void setAlertTypeID(int alertTypeID) {
		this.alertTypeID = alertTypeID;
	}

	public String getAlertEventOpInfo() {
		return alertEventOpInfo;
	}

	public void setAlertEventOpInfo(String alertEventOpInfo) {
		this.alertEventOpInfo = alertEventOpInfo;
	}
	
	public String getAlertEventOpInfoRemaining() {
		return alertEventOpInfoRemaining;
	}

	public void setAlertEventOpInfoRemaining(String alertEventOpInfoRemaining) {
		this.alertEventOpInfoRemaining = alertEventOpInfoRemaining;
	}

	public String getStrAlertCatDetail() {
		
		int alertTypeID = getAlertTypeID();
		int alertCatID = getAlertCatID();
		String strAlertCatDetail = null;
		
		//set the AlertCatDetail based on alert type id.
		switch (alertTypeID) {
			//if alertTypeID is Detour / Rider Alert
			case 1:
				switch (alertCatID) {
					case 1: 
						strAlertCatDetail = "Temporary Detour"; 
						break;
					case 2: 
						strAlertCatDetail = "Temporary Detour for " + getAlertCatDetail();
						break;
					case 3: 
						strAlertCatDetail = "Long-term Detour"; 
						break;
					case 4: 
						strAlertCatDetail = "Temporary Bus Stop"; 
						break;
					case 5: 
						strAlertCatDetail = "Service disruption"; 
						break;
					case 6: 
						strAlertCatDetail = "Service disruption for " + getAlertCatDetail();
						break;
					case 8: 
						strAlertCatDetail = getAlertCatDetail();
						break;
					//set default for Service Changes (type is 7). Don't display type 'Service Changes' but do display type for others.
					default:
						strAlertCatDetail = getAlertCatDetail(); 
						break;
				}
			break;
		}
		
		return strAlertCatDetail;
	}

	public void setStrAlertCatDetail(String strAlertCatDetail) {
	}

	public ArrayList getDirectionDTOs() {
		return directionDTOs;
	}

	public void setDirectionDTOs(ArrayList directionDTOs) {
		this.directionDTOs = directionDTOs;
	}

	public ArrayList getOtherRouteLineAffDTOs() {
		return otherRouteLineAffDTOs;
	}

	public void setOtherRouteLineAffDTOs(ArrayList otherRouteLineAffDTOs) {
		this.otherRouteLineAffDTOs = otherRouteLineAffDTOs;
	}
	
}
