.class public Ljava/util/FormatFlagsConversionMismatchException;
.super Ljava/util/IllegalFormatException;
.source "FormatFlagsConversionMismatchException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x123c11eL


# instance fields
.field private c:C

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;C)V
    .registers 4
    .parameter "f"
    .parameter "c"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 47
    if-nez p1, :cond_b

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50
    :cond_b
    iput-object p1, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    .line 51
    iput-char p2, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    .line 52
    return-void
.end method


# virtual methods
.method public getConversion()C
    .registers 2

    .prologue
    .line 69
    iget-char v0, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    return v0
.end method

.method public getFlags()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "Mismatched Convertor ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-char v1, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", Flags= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
