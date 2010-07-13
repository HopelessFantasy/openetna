.class public Ljava/util/UnknownFormatConversionException;
.super Ljava/util/IllegalFormatException;
.source "UnknownFormatConversionException.java"


# static fields
.field private static final serialVersionUID:J = 0x122d6c2L


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 40
    iput-object p1, p0, Ljava/util/UnknownFormatConversionException;->s:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getConversion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Ljava/util/UnknownFormatConversionException;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    const-string v0, "K0349"

    iget-object v1, p0, Ljava/util/UnknownFormatConversionException;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
