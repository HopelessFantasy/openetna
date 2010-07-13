.class public Lorg/bouncycastle/jce/provider/JDKKeyFactory$ECDHC;
.super Lorg/bouncycastle/jce/provider/JDKKeyFactory$EC;
.source "JDKKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDHC"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 776
    const-string v0, "ECDHC"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JDKKeyFactory$EC;-><init>(Ljava/lang/String;)V

    .line 777
    return-void
.end method
