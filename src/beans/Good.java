package beans;

public class Good {
    private String goods_id;
    private String goods_name;
    private String unitprice;
    private String details;
    private String pic;

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(String goods_id) {
        this.goods_id = goods_id;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public String getUnitprice() {
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

    public Good(String goods_id, String goods_name, String unitprice, String details) {
        super();
        this.goods_id = goods_id;
        this.goods_name = goods_name;
        this.unitprice = unitprice;
        this.details = details;
    }

    public Good() {
        super();
    }
}
