package com.tornado.entity.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the message table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="message"
 */

public abstract class BaseMessage  implements Serializable {

	public static String REF = "Message";
	public static String PROP_THE_ORDER = "TheOrder";
	public static String PROP_DATE = "Date";
	public static String PROP_TYPE = "Type";
	public static String PROP_AUTHOR = "Author";
	public static String PROP_RESERVED = "Reserved";
	public static String PROP_ID = "Id";
	public static String PROP_CONTENT = "Content";
	public static String PROP_PERMISSIONS = "Permissions";
	public static String PROP_TITLE = "Title";
	public static String PROP_REPLYID = "Replyid";


	// constructors
	public BaseMessage () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseMessage (java.lang.Long id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.Long id;

	// fields
	private java.lang.String author;
	private java.lang.String content;
	private java.util.Date date;
	private java.lang.String permissions;
	private java.lang.Long replyid;
	private java.lang.String reserved;
	private java.lang.Long theOrder;
	private java.lang.String title;
	private java.lang.Integer type;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="increment"
     *  column="id"
     */
	public java.lang.Long getId () {
		return id;
	}

	/**
	 * Set the unique identifier of this class
	 * @param id the new ID
	 */
	public void setId (java.lang.Long id) {
		this.id = id;
		this.hashCode = Integer.MIN_VALUE;
	}




	/**
	 * Return the value associated with the column: author
	 */
	public java.lang.String getAuthor () {
		return author;
	}

	/**
	 * Set the value related to the column: author
	 * @param author the author value
	 */
	public void setAuthor (java.lang.String author) {
		this.author = author;
	}



	/**
	 * Return the value associated with the column: content
	 */
	public java.lang.String getContent () {
		return content;
	}

	/**
	 * Set the value related to the column: content
	 * @param content the content value
	 */
	public void setContent (java.lang.String content) {
		this.content = content;
	}



	/**
	 * Return the value associated with the column: date
	 */
	public java.util.Date getDate () {
		return date;
	}

	/**
	 * Set the value related to the column: date
	 * @param date the date value
	 */
	public void setDate (java.util.Date date) {
		this.date = date;
	}



	/**
	 * Return the value associated with the column: permissions
	 */
	public java.lang.String getPermissions () {
		return permissions;
	}

	/**
	 * Set the value related to the column: permissions
	 * @param permissions the permissions value
	 */
	public void setPermissions (java.lang.String permissions) {
		this.permissions = permissions;
	}



	/**
	 * Return the value associated with the column: replyid
	 */
	public java.lang.Long getReplyid () {
		return replyid;
	}

	/**
	 * Set the value related to the column: replyid
	 * @param replyid the replyid value
	 */
	public void setReplyid (java.lang.Long replyid) {
		this.replyid = replyid;
	}



	/**
	 * Return the value associated with the column: reserved
	 */
	public java.lang.String getReserved () {
		return reserved;
	}

	/**
	 * Set the value related to the column: reserved
	 * @param reserved the reserved value
	 */
	public void setReserved (java.lang.String reserved) {
		this.reserved = reserved;
	}



	/**
	 * Return the value associated with the column: the_order
	 */
	public java.lang.Long getTheOrder () {
		return theOrder;
	}

	/**
	 * Set the value related to the column: the_order
	 * @param theOrder the the_order value
	 */
	public void setTheOrder (java.lang.Long theOrder) {
		this.theOrder = theOrder;
	}



	/**
	 * Return the value associated with the column: title
	 */
	public java.lang.String getTitle () {
		return title;
	}

	/**
	 * Set the value related to the column: title
	 * @param title the title value
	 */
	public void setTitle (java.lang.String title) {
		this.title = title;
	}



	/**
	 * Return the value associated with the column: type
	 */
	public java.lang.Integer getType () {
		return type;
	}

	/**
	 * Set the value related to the column: type
	 * @param type the type value
	 */
	public void setType (java.lang.Integer type) {
		this.type = type;
	}




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.tornado.entity.Message)) return false;
		else {
			com.tornado.entity.Message message = (com.tornado.entity.Message) obj;
			if (null == this.getId() || null == message.getId()) return false;
			else return (this.getId().equals(message.getId()));
		}
	}

	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			if (null == this.getId()) return super.hashCode();
			else {
				String hashStr = this.getClass().getName() + ":" + this.getId().hashCode();
				this.hashCode = hashStr.hashCode();
			}
		}
		return this.hashCode;
	}


	public String toString () {
		return super.toString();
	}


}