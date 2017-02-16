public class HalfRectifier extends Chugen {
    function float tick(float in){
        if(in > 0){
            return in;
        }
        else{
            return 0.0;
        }
    }
}