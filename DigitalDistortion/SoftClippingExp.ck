public class SoftClippingExp extends Chugen {
    function float tick(float in){
        if(in > 0){
            return 1.0 - Math.exp(-in);
        }
        else{
            return -1.0 + Math.exp(in);
        }
    }
}