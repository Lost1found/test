package lost_found;

public class Picker {
	  private String card;
	  private String pickerName;
	  private String pickerPhone;
	  private String pickerRealName;
	  private String pickPlace;
	  private String picktime;
	  private String ownerName;
	  private String ownerSchool;
	  public Picker() {
		
	  }
	  public Picker(String card) {
		super();
		this.card = card;
	  }
	public Picker(String card, String pickerName, String pickerPhone, String pickerRealName, String pickPlace,
			String picktime, String ownerName, String ownerSchool) {
		super();
		this.card = card;
		this.pickerName = pickerName;
		this.pickerPhone = pickerPhone;
		this.pickerRealName = pickerRealName;
		this.pickPlace = pickPlace;
		this.picktime = picktime;
		this.ownerName = ownerName;
		this.ownerSchool = ownerSchool;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	public String getPickerName() {
		return pickerName;
	}
	public void setPickerName(String pickerName) {
		this.pickerName = pickerName;
	}
	public String getPickerPhone() {
		return pickerPhone;
	}
	public void setPickerPhone(String pickerPhone) {
		this.pickerPhone = pickerPhone;
	}
	public String getPickerRealName() {
		return pickerRealName;
	}
	public void setPickerRealName(String pickerRealName) {
		this.pickerRealName = pickerRealName;
	}
	public String getPickPlace() {
		return pickPlace;
	}
	public void setPickPlace(String pickPlace) {
		this.pickPlace = pickPlace;
	}
	public String getPicktime() {
		return picktime;
	}
	public void setPicktime(String picktime) {
		this.picktime = picktime;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getOwnerSchool() {
		return ownerSchool;
	}
	public void setOwnerSchool(String ownerSchool) {
		this.ownerSchool = ownerSchool;
	}
	  
}

