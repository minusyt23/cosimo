module engine;

import sequence;
import step;
import context;
import hello;
import loop;

class Engine {
public:
    this() {
        Step[] steps = [ 
            new Hello(), 
            new Loop(
                (c) => c.counter < 5, 
                [
                    new Hello()
            ]) 
        ];
        this.pipeline = new Sequence(steps);
        // Fill ctx
    }

    void start() {
        this.pipeline.run(this.ctx);
    }

private:
    Sequence pipeline;
    Context ctx;
}