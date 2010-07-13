.class Lorg/javia/arity/TestFormat;
.super Ljava/lang/Object;
.source "UnitTest.java"


# static fields
.field static cases:[Lorg/javia/arity/FormatCase;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const-wide/16 v11, 0x0

    const-wide v9, 0x3ff3c0ca428c59ddL

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 190
    const/16 v0, 0x26

    new-array v0, v0, [Lorg/javia/arity/FormatCase;

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-wide v2, 0x3fb999999999999aL

    const-string v4, "0.1"

    invoke-direct {v1, v6, v2, v3, v4}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-wide v2, 0x3fbeb851eb851eb8L

    const-string v4, "0.12"

    invoke-direct {v1, v6, v2, v3, v4}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/javia/arity/FormatCase;

    const-wide v2, 0x3f50624dd2f1a9fcL

    const-string v4, "0.001"

    invoke-direct {v1, v6, v2, v3, v4}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3f53a92a30553261L

    const-string v5, "0.0012"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3e7ad7f29abcaf48L

    const-string v5, "1E-7"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3e801b2b29a4692bL

    const-string v5, "1.2E-7"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3fbf9add3746f62eL

    const-string v5, "0.123456789012345"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-string v3, "0"

    invoke-direct {v2, v6, v11, v12, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide/high16 v3, 0x3ff0

    const-string v5, "1"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide/high16 v3, 0x4028

    const-string v5, "12"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x41d26580b4800000L

    const-string v5, "1234567890"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x41cdcd6500000000L

    const-string v5, "1000000000"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-string v3, "1.23456789012345"

    invoke-direct {v2, v6, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x40c81cd6e63c53b2L

    const-string v5, "12345.6789012345"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x41d26580b487e69bL

    const-string v5, "1234567890.12345"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x42dc12218377de40L

    const-string v5, "1.23456789012345E14"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x42d6bcc41e900000L

    const-string v5, "1E14"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x42db48eb57e00000L

    const-string v5, "1.2E14"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x42d6bcc41e900040L

    const-string v5, "1.00000000000001E14"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3fb999999999999aL

    const-string v5, "0.1"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3e801b2b29a4692bL

    const-string v5, "1.2E-7"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3fbf9add3746f62eL

    const-string v5, "0.12345678901235"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-string v3, "0"

    invoke-direct {v2, v8, v11, v12, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-string v3, "1.2345678901235"

    invoke-direct {v2, v7, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-string v3, "1.234567890123"

    invoke-direct {v2, v8, v9, v10, v3}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x40c81cd6e63c53b2L

    const-string v5, "12345.6789012345"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x41d26580b487e69bL

    const-string v5, "1234567890.1235"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x42dc12218377de40L

    const-string v5, "1.234567890123E14"

    invoke-direct {v2, v8, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x42d6bcc41e900040L

    const-string v5, "1E14"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x4345ee2a2eb5a5c4L

    const-string v5, "1.2345678901234568E16"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x4345ee2a2eb5a5c4L

    const-string v5, "1.2345678901235E16"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x4376345785d8a000L

    const-string v5, "1E17"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x4341c37937e08000L

    const-string v5, "1E16"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x430c6bf52633fff8L

    const-string v5, "9.99999999999999E14"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x430c6bf52633fff8L

    const-string v5, "1E15"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x430c6bf52633ffd0L

    const-string v5, "9.9999999999999E14"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3ff00014f8b588e3L

    invoke-static {v3, v4}, Lorg/javia/arity/MoreMath;->log2(D)D

    move-result-wide v3

    const-string v5, "0.000028853612282487"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lorg/javia/arity/FormatCase;

    const-wide v3, 0x3f3a36e2eb1c432dL

    const-string v5, "0.0004"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/javia/arity/FormatCase;-><init>(IDLjava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/TestFormat;->cases:[Lorg/javia/arity/FormatCase;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static testFormat()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    const-string v9, " "

    .line 241
    const/4 v0, 0x1

    move v1, v0

    move v0, v8

    .line 242
    :goto_6
    sget-object v2, Lorg/javia/arity/TestFormat;->cases:[Lorg/javia/arity/FormatCase;

    array-length v2, v2

    if-ge v0, v2, :cond_a3

    .line 243
    sget-object v2, Lorg/javia/arity/TestFormat;->cases:[Lorg/javia/arity/FormatCase;

    aget-object v2, v2, v0

    .line 244
    iget-object v3, v2, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 245
    iget v5, v2, Lorg/javia/arity/FormatCase;->rounding:I

    if-nez v5, :cond_4f

    iget-wide v5, v2, Lorg/javia/arity/FormatCase;->val:D

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_4f

    .line 246
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wrong test? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v2, Lorg/javia/arity/FormatCase;->val:D

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    :cond_4f
    iget-wide v3, v2, Lorg/javia/arity/FormatCase;->val:D

    iget v5, v2, Lorg/javia/arity/FormatCase;->rounding:I

    invoke-static {v3, v4, v5}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v3

    .line 249
    iget-object v4, v2, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    .line 250
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lorg/javia/arity/FormatCase;->res:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', got \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lorg/javia/arity/FormatCase;->val:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v8

    .line 253
    :cond_94
    iget v3, v2, Lorg/javia/arity/FormatCase;->rounding:I

    if-nez v3, :cond_9c

    .line 242
    :goto_98
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 253
    :cond_9c
    const/16 v3, 0xf

    iget v2, v2, Lorg/javia/arity/FormatCase;->rounding:I

    sub-int v2, v3, v2

    goto :goto_98

    .line 256
    :cond_a3
    return v1
.end method
