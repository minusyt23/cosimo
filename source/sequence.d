module sequence;

import step;
import context;

class Sequence : Step {
public:
    this(Step[] steps) {
        this.steps = steps;
    }

    override void run(ref Context ctx) {
        foreach(step; this.steps) {
            step.run(ctx);
        }
    }

private:
    Step[] steps;
}