package lost_found;

public class Owner {
	private String cardID;
	private String ownerName;
	private String ownerPhone;
	private String ownerRealName;
	private String ownerSchool;
	public Owner(){
		
	}
	public Owner(String cardID) {
		super();
		this.cardID = cardID;
	}

	public Owner(String cardID, String ownerName, String ownerPhone, String ownerRealName, String ownerSchool) {
		super();
		this.cardID = cardID;
		this.ownerName = ownerName;
		this.ownerPhone = ownerPhone;
		this.ownerRealName = ownerRealName;
		this.ownerSchool = ownerSchool;
	}
	public String getCardID() {
		return cardID;
	}
	public void setCardID(String cardID) {
		this.cardID = cardID;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getOwnerPhone() {
		return ownerPhone;
	}
	public void setOwnerPhone(String ownerPhone) {
		this.ownerPhone = ownerPhone;
	}
	public String getOwnerRealName() {
		return ownerRealName;
	}
	public void setOwnerRealName(String ownerRealName) {
		this.ownerRealName = ownerRealName;
	}
	public String getOwnerSchool() {
		return ownerSchool;
	}
	public void setOwnerSchool(String ownerSchool) {
		this.ownerSchool = ownerSchool;
	}
}

