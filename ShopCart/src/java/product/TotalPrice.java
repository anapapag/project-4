package product;



public class TotalPrice {

    float totalPrice;
    
    public TotalPrice(){
        totalPrice = 0;
    }
    public void setTotal(float sum){
        this.totalPrice = (float)sum;
    }
    public float getTotal(){    
        return this.totalPrice;
    }
    
}
