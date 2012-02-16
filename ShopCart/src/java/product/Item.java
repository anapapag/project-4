package product;


public class Item {
    
    String name;
    float quantity;
    double price;
    float sum;
    
    public Item(){
     name = "";
     quantity = 0;
     price = 0.0;
     sum = 0;
    }  
    
    public void setName(String name){
        this.name = name;
    }
    
    public String getName(){
        return this.name;
    }
    
    public void setPrice(double price){
        this.price = price;
    }
    
    public double getPrice(){
        return price;
    }
    
    public void setQuantity(float quantity){
        float tmp = new Float(quantity);
        this.quantity = tmp;
         
    }
    
    public float getQuantity(){
        return quantity;
    }
    
    public void setSum(){
       double tmp = getPrice() * getQuantity();
        this.sum= (float)tmp;
    }
    
   public float getSum(){
       double tmp = getPrice() * getQuantity();
       this.sum = (float)tmp;
       return sum;
   }
       
}
