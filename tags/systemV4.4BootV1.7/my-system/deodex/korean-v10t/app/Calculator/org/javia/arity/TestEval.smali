.class Lorg/javia/arity/TestEval;
.super Ljava/lang/Object;
.source "UnitTest.java"


# static fields
.field static cases:[Lorg/javia/arity/EvalCase;

.field static casesComplex:[Lorg/javia/arity/EvalCase;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    .line 38
    const/16 v0, 0x35

    new-array v0, v0, [Lorg/javia/arity/EvalCase;

    const/4 v1, 0x0

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "."

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+."

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "\u03c0"

    const-wide v4, 0x400921fb54442d18L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "2\u00d73"

    const-wide/high16 v4, 0x4018

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+\u221a9*2"

    const-wide/high16 v4, 0x401c

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "3\u221a 4"

    const-wide/high16 v4, 0x4018

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "\u221a16sin(2\u03c0/4)"

    const-wide/high16 v4, 0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+"

    const-wide/high16 v4, -0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+1"

    const-wide/high16 v4, 0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+-1"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-0.5"

    const-wide/high16 v4, -0x4020

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "+1e2"

    const-wide/high16 v4, 0x4059

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-2^3!"

    const-wide/high16 v4, -0x3fb0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "(-2)^3!"

    const-wide/high16 v4, 0x4050

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-2^1^2"

    const-wide/high16 v4, -0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "--1"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-3^--2"

    const-wide/high16 v4, -0x3fde

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+2)(2+3"

    const-wide/high16 v4, 0x402e

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+2)!^-2"

    const-wide v4, 0x3f9c71c71c71c71cL

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "sin(0)"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "cos(0)"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "sin(-1--1)"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-(2+1)*-(4/2)"

    const-wide/high16 v4, 0x4018

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-.5E-1"

    const-wide v4, -0x4056666666666666L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1E1.5"

    const-wide/high16 v4, -0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "2 3 4"

    const-wide/high16 v4, 0x4038

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "pi"

    const-wide v4, 0x400921fb54442d18L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "e"

    const-wide v4, 0x4005bf0a8b145769L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "sin(pi/2)"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f=sin(2x)"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f(pi/2)"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "a=3"

    const-wide/high16 v4, 0x4008

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "b=a+1"

    const-wide/high16 v4, 0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f(x, y) = x*(y+1)"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f(a, b-a)"

    const-wide/high16 v4, 0x4018

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, " f(a pi/4)"

    const-wide/high16 v4, -0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f (  1  +  1  , a+1)"

    const-wide/high16 v4, 0x4024

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "g(foo) = f (f(foo, 1)pi/2)"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "g(.5*2)"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "NaN"

    const-wide/high16 v4, 0x7ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "Inf"

    const-wide/high16 v4, 0x7ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "Infinity"

    const-wide/high16 v4, 0x7ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-Inf"

    const-wide/high16 v4, -0x10

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "0/0"

    const-wide/high16 v4, 0x7ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "comb(11, 9)"

    const-wide v4, 0x404b800000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "perm(11, 2)"

    const-wide v4, 0x405b800000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "comb(1000, 999)"

    const-wide v4, 0x408f400000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "perm(1000, 1)"

    const-wide v4, 0x408f400000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "c(x)=1+x^2"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "c(3-1)"

    const-wide/high16 v4, 0x4014

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "abs(3-4i)"

    const-wide/high16 v4, 0x4014

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "exp(pi*i)"

    const-wide/high16 v4, -0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/TestEval;->cases:[Lorg/javia/arity/EvalCase;

    .line 97
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/javia/arity/EvalCase;

    const/4 v1, 0x0

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "sqrt(-1)^2"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/high16 v5, -0x4010

    const-wide/16 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "i"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "sqrt(-1)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "c(2+0i)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/high16 v5, 0x4014

    const-wide/16 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "c(1+i)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/high16 v5, 0x3ff0

    const-wide/high16 v7, 0x4000

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "log(-1)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/16 v5, 0x0

    const-wide v7, -0x3ff6de04abbbd2e8L

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "i^i"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide v5, 0x3fca9bcc46f767e0L

    const-wide/16 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "gcd(135-14i, 155+34i)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/high16 v5, 0x4028

    const-wide/high16 v7, -0x3fec

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "comb(1+.5i, 1)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/high16 v5, 0x3ff0

    const-wide/high16 v7, 0x3fe0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "perm(2+i, 2)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/high16 v5, 0x3ff0

    const-wide/high16 v7, 0x4008

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/TestEval;->casesComplex:[Lorg/javia/arity/EvalCase;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static testEval()Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x1

    .line 114
    new-instance v1, Lorg/javia/arity/Symbols;

    invoke-direct {v1}, Lorg/javia/arity/Symbols;-><init>()V

    .line 115
    const/4 v2, 0x0

    move v11, v2

    move v2, v0

    move v0, v11

    :goto_a
    sget-object v3, Lorg/javia/arity/TestEval;->cases:[Lorg/javia/arity/EvalCase;

    array-length v3, v3

    if-ge v0, v3, :cond_121

    .line 116
    sget-object v3, Lorg/javia/arity/TestEval;->cases:[Lorg/javia/arity/EvalCase;

    aget-object v3, v3, v0

    .line 118
    const/4 v4, 0x1

    .line 122
    :try_start_14
    iget-object v5, v3, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-static {v5}, Lorg/javia/arity/Symbols;->isDefinition(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 123
    iget-object v5, v3, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v5

    .line 124
    invoke-virtual {v1, v5}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V

    .line 125
    iget-object v5, v5, Lorg/javia/arity/FunctionAndName;->function:Lorg/javia/arity/Function;

    .line 126
    invoke-virtual {v5}, Lorg/javia/arity/Function;->arity()I

    move-result v6

    if-nez v6, :cond_9c

    .line 127
    invoke-virtual {v5}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v6

    .line 128
    invoke-virtual {v5}, Lorg/javia/arity/Function;->evalComplex()Lorg/javia/arity/Complex;

    move-result-object v5

    .line 129
    if-eqz v4, :cond_9a

    invoke-static {v6, v7, v5}, Lorg/javia/arity/UnitTest;->equal(DLorg/javia/arity/Complex;)Z

    move-result v4

    if-eqz v4, :cond_9a

    const/4 v4, 0x1

    .line 130
    :goto_3e
    const/4 v5, 0x1

    invoke-static {v6, v7, v5}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v5

    move-wide v11, v6

    move v6, v4

    move-object v7, v5

    move-wide v4, v11

    .line 144
    :goto_47
    if-eqz v6, :cond_ec

    iget-wide v8, v3, Lorg/javia/arity/EvalCase;->result:D

    invoke-static {v8, v9, v4, v5}, Lorg/javia/arity/UnitTest;->equal(DD)Z
    :try_end_4e
    .catch Lorg/javia/arity/SyntaxException; {:try_start_14 .. :try_end_4e} :catch_ef

    move-result v4

    if-eqz v4, :cond_ec

    const/4 v4, 0x1

    :goto_52
    move-object v5, v7

    .line 149
    :goto_53
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_104

    const-string v8, ""

    :goto_5e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "                                           "

    const/4 v9, 0x0

    const/16 v10, 0xf

    iget-object v3, v3, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v10, v3

    const/4 v10, 0x0

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    if-nez v4, :cond_96

    .line 154
    const/4 v2, 0x0

    .line 115
    :cond_96
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    .line 129
    :cond_9a
    const/4 v4, 0x0

    goto :goto_3e

    .line 132
    :cond_9c
    const-wide/high16 v6, -0x3ff8

    .line 133
    :try_start_9e
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide v11, v6

    move v6, v4

    move-object v7, v5

    move-wide v4, v11

    goto :goto_47

    .line 136
    :cond_a7
    iget-object v5, v3, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v5

    .line 137
    iget-object v7, v3, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lorg/javia/arity/Symbols;->evalComplex(Ljava/lang/String;)Lorg/javia/arity/Complex;

    move-result-object v7

    .line 138
    if-eqz v4, :cond_ea

    invoke-static {v5, v6, v7}, Lorg/javia/arity/UnitTest;->equal(DLorg/javia/arity/Complex;)Z

    move-result v4

    if-eqz v4, :cond_ea

    const/4 v4, 0x1

    .line 139
    :goto_bc
    if-nez v4, :cond_e0

    .line 140
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    :cond_e0
    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;
    :try_end_e4
    .catch Lorg/javia/arity/SyntaxException; {:try_start_9e .. :try_end_e4} :catch_ef

    move-result-object v7

    move-wide v11, v5

    move v6, v4

    move-wide v4, v11

    goto/16 :goto_47

    .line 138
    :cond_ea
    const/4 v4, 0x0

    goto :goto_bc

    .line 144
    :cond_ec
    const/4 v4, 0x0

    goto/16 :goto_52

    .line 145
    :catch_ef
    move-exception v4

    .line 146
    invoke-virtual {v4}, Lorg/javia/arity/SyntaxException;->toString()Ljava/lang/String;

    move-result-object v4

    .line 147
    iget-wide v5, v3, Lorg/javia/arity/EvalCase;->result:D

    const-wide/high16 v7, -0x4000

    cmpl-double v5, v5, v7

    if-nez v5, :cond_102

    const/4 v5, 0x1

    :goto_fd
    move v11, v5

    move-object v5, v4

    move v4, v11

    goto/16 :goto_53

    :cond_102
    const/4 v5, 0x0

    goto :goto_fd

    .line 149
    :cond_104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed (expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v3, Lorg/javia/arity/EvalCase;->result:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5e

    .line 158
    :cond_121
    const/4 v0, 0x0

    :goto_122
    sget-object v3, Lorg/javia/arity/TestEval;->casesComplex:[Lorg/javia/arity/EvalCase;

    array-length v3, v3

    if-ge v0, v3, :cond_19b

    .line 160
    :try_start_127
    sget-object v3, Lorg/javia/arity/TestEval;->casesComplex:[Lorg/javia/arity/EvalCase;

    aget-object v3, v3, v0

    .line 161
    iget-object v4, v3, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/javia/arity/Symbols;->evalComplex(Ljava/lang/String;)Lorg/javia/arity/Complex;

    move-result-object v4

    .line 162
    iget-object v5, v3, Lorg/javia/arity/EvalCase;->cResult:Lorg/javia/arity/Complex;

    invoke-static {v5, v4}, Lorg/javia/arity/UnitTest;->equal(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Z

    move-result v5

    if-nez v5, :cond_16d

    .line 163
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, v3, Lorg/javia/arity/EvalCase;->cResult:Lorg/javia/arity/Complex;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " got "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    const/4 v2, 0x0

    .line 158
    :goto_16a
    add-int/lit8 v0, v0, 0x1

    goto :goto_122

    .line 167
    :cond_16d
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, v3, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x28

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_198
    .catch Lorg/javia/arity/SyntaxException; {:try_start_127 .. :try_end_198} :catch_199

    goto :goto_16a

    .line 169
    :catch_199
    move-exception v3

    goto :goto_16a

    .line 172
    :cond_19b
    return v2
.end method
