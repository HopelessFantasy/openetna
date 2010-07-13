.class public Ljava/util/IllegalFormatPrecisionException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatPrecisionException.java"


# static fields
.field private static final serialVersionUID:J = 0x11d81e0L


# instance fields
.field private p:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "p"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 40
    iput p1, p0, Ljava/util/IllegalFormatPrecisionException;->p:I

    .line 41
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Ljava/util/IllegalFormatPrecisionException;->p:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Ljava/util/IllegalFormatPrecisionException;->p:I

    return v0
.end method
