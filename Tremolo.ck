public class Tremolo extends Chugen {
    
    TriOsc lfo => blackhole; 
    5 => lfo.freq;
    
    function float tick(float in){
        return in * lfo.last();
    }
    function float freq(float frequency){
        if(frequency < 20 && frequency > 0.5){
            frequency => lfo.freq;
            return frequency;
        }
        else{
            <<< "Not an LFO frecuency, 0.5 to 20" >>>;
            return lfo.freq();
        }
    } 
    function float freq(){
        return lfo.freq();
    }
}