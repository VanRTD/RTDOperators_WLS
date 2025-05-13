/**
 * 
 */
package com.rtd.operator.model;

import java.util.Date;

/**
 * @author Justin Hancock
 * 
 */
public class DriverAlert {

	private String alertDescription;
	private String driverAlertDetail;
	private String responsiblePerson;
	private Date fromDate;
	private Date toDate;
	private Date updateDate;
	private String effectiveDate;

	/**
	 * default no arg constructor
	 */
	public DriverAlert() {
		super();
	}

	/**
	 * @return returns the alertDescription
	 */
	public String getAlertDescription() {
		return alertDescription;
	}

	/**
	 * @param alertDescription
	 */
	public void setAlertDescription(final String alertDescription) {
		this.alertDescription = alertDescription;
	}

	/**
	 * @return returns the driverAlertDetail
	 */
	public String getDriverAlertDetail() {
		return driverAlertDetail;
	}

	/**
	 * @param driverAlertDetail
	 */
	public void setDriverAlertDetail(final String driverAlertDetail) {
		this.driverAlertDetail = driverAlertDetail;
	}

	/**
	 * @return returns the responsiblePerson
	 */
	public String getResponsiblePerson() {
		return responsiblePerson;
	}

	/**
	 * @param responsiblePerson
	 */
	public void setResponsiblePerson(final String responsiblePerson) {
		this.responsiblePerson = responsiblePerson;
	}

	/**
	 * @return returns the fromDate
	 */
	public Date getFromDate() {
		return fromDate;
	}

	/**
	 * @param fromDate
	 */
	public void setFromDate(final Date fromDate) {
		this.fromDate = fromDate;
	}

	/**
	 * @return returns the toDate
	 */
	public Date getToDate() {
		return toDate;
	}

	/**
	 * @param toDate
	 */
	public void setToDate(final Date toDate) {
		this.toDate = toDate;
	}

	/**
	 * @return returns the updateDate
	 */
	public Date getUpdateDate() {
		return updateDate;
	}

	/**
	 * @param updateDate
	 */
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	/**
	 * @return returns the effictiveDate of this DriverAlert
	 */
	public String getEffectiveDate() 
	{
		return effectiveDate;
	}

	/**
	 * @param effectiveDate
	 */
	public void setEffectiveDate(String effectiveDate)
{
		this.effectiveDate = effectiveDate;
	}

}
