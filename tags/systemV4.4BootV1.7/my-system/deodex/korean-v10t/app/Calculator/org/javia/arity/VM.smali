.class Lorg/javia/arity/VM;
.super Ljava/lang/Object;
.source "VM.java"


# static fields
.field public static final ABS:B = 0x1ct

.field public static final ACOS:B = 0x14t

.field public static final ACOSH:B = 0x1at

.field public static final ADD:B = 0x3t

.field public static final ASIN:B = 0x13t

.field public static final ASINH:B = 0x19t

.field public static final ATAN:B = 0x15t

.field public static final ATANH:B = 0x1bt

.field public static final BYTECODE_END:B = 0x2at

.field public static final CALL:B = 0x2t

.field public static final CBRT:B = 0xdt

.field public static final CEIL:B = 0x1et

.field public static final COMB:B = 0x23t

.field public static final CONST:B = 0x1t

.field public static final COS:B = 0x11t

.field public static final COSH:B = 0x17t

.field public static final DIV:B = 0x6t

.field public static final EXP:B = 0xet

.field public static final FACT:B = 0xbt

.field public static final FLOOR:B = 0x1dt

.field public static final GCD:B = 0x22t

.field public static final LOAD0:B = 0x25t

.field public static final LOAD1:B = 0x26t

.field public static final LOAD2:B = 0x27t

.field public static final LOAD3:B = 0x28t

.field public static final LOAD4:B = 0x29t

.field public static final LOG:B = 0xft

.field public static final MAX:B = 0x21t

.field public static final MIN:B = 0x20t

.field public static final MOD:B = 0x7t

.field public static final MUL:B = 0x5t

.field public static final PERM:B = 0x24t

.field public static final POWER:B = 0xat

.field public static final RESERVED:B = 0x0t

.field public static final RND:B = 0x8t

.field public static final SIGN:B = 0x1ft

.field public static final SIN:B = 0x10t

.field public static final SINH:B = 0x16t

.field public static final SQRT:B = 0xct

.field public static final SUB:B = 0x4t

.field public static final TAN:B = 0x12t

.field public static final TANH:B = 0x18t

.field public static final UMIN:B = 0x9t

.field public static final builtinArity:[B

.field public static final opcodeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x2b

    .line 68
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "const"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "call"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "add"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mul"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "div"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mod"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rnd"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "umin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "power"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fact"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sqrt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cbrt"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "log"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sin"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cos"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "tan"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "asin"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "acos"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "atan"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sinh"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "cosh"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "tanh"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "asinh"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "acosh"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "atanh"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "abs"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "ceil"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "sign"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "min"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "max"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "gcd"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "comb"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "perm"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "load0"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "load1"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "load2"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "load3"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "load4"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "bytecode_end"

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/VM;->opcodeName:[Ljava/lang/String;

    .line 114
    new-array v0, v3, [B

    fill-array-data v0, :array_108

    sput-object v0, Lorg/javia/arity/VM;->builtinArity:[B

    return-void

    :array_108
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0xfft
        0xfft
        0xfft
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
