module hello;

import std.stdio;
import step;
import context;

class Hello : Step {
public:
    this() {}

    override void run(ref Context ctx) {
        writeln("ciao dallo step. counter = ", ctx.counter);
        ctx.counter++;
    }
}