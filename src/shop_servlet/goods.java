package shop_servlet;

public class goods {
    private String goods_id;
    private String goods_name;
    private String unitprice;
    private String details;

    public String getId() {
        return goods_id;
    }

    public void setId(String goods_id) {
        this.goods_id = goods_id;
    }

    public String getGoodsname() {

        return goods_name;
    }

    public void setGoodsname(String goods_name) {
        this.goods_name = goods_name;
    }

    public String Unitprice() {
        return unitprice;
    }

    public void setUnitprice(String unitprice) {
        this.unitprice = unitprice;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    @Override
    public String toString() {
        return "User [goods_id=" + goods_id + ", goods_name=" + goods_name + ", unitprice=" + unitprice + ", details=" + details + "]";
    }

    public goods(String goods_id, String goods_name, String unitprice, String details) {
        super();
        this.goods_id = goods_id;
        this.goods_name = goods_name;
        this.unitprice = unitprice;
        this.details = details;
    }

    public goods() {
        super();
    }
}
