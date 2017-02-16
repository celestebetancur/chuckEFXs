public class SoftClipping extends Chugen {
    function float tick(float in){
        if(in > 0.666){
            return 1.0;
        }
        if(in > 0.333){
            return (3 - Math.pow(2 - (3*in),2))/3;
        }
        if(in < 0.333){
            return -(3 - Math.pow(2 - (3*in),2))/3;
        }
        else{
            return in * 2;
        }
    }
}