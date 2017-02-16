public class HardClipping extends Chugen {
    function float tick(float in){
        if(in > 1.0){
            return 1.0;
        }
        if(in < -1.0){
            return -1.0;
        }
        else{
            return in;
        }
    }
}