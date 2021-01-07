package tw.com.uyayi.model;

public class Products {
	private int productPkId;
	private String productName;
	private String productUpdateDate;
	private int productPrice;
	private int productQuantity;
	private String productStatus;
	private String productImage;
	private String productProfile;
	private String productSpec;

	public Products() {

	}
	
	public Products(String productName, String productUpdateDate, int productPrice, int productQuantity, String productStatus, String productImage, String productProfile, String productSpec) {
		this.productName = productName;
		this.productUpdateDate = productUpdateDate;
		this.productPrice = productPrice;
		this.productQuantity = productQuantity;
		this.productStatus = productStatus;
		this.productImage = productImage;
		this.productProfile = productProfile;
		this.productSpec = productSpec;
	}

	public int getProductPkId() {
		return productPkId;
	}

	public void setProductPkId(int productPkId) {
		this.productPkId = productPkId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductUpdateDate() {
		return productUpdateDate;
	}

	public void setProductUpdateDate(String productUpdateDate) {
		this.productUpdateDate = productUpdateDate;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public int getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}

	public String getProductStatus() {
		return productStatus;
	}

	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public String getProductProfile() {
		return productProfile;
	}

	public void setProductProfile(String productProfile) {
		this.productProfile = productProfile;
	}

	public String getProductSpec() {
		return productSpec;
	}

	public void setProductSpec(String productSpec) {
		this.productSpec = productSpec;
	}
}
