module loop;

import step;
import sequence;
import context;

class Loop : Sequence {
public:
    this(bool delegate(ref const Context) condition, Step[] steps) {
        super(steps);
        this.condition = condition;
    }

    override void run(ref Context ctx) {
        while(this.condition(ctx)) {
            super.run(ctx);
        }
    }

private:
    bool delegate(ref const Context) condition;
}