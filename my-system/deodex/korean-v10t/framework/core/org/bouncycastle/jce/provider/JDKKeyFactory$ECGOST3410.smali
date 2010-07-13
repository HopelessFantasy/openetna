.class public Lorg/bouncycastle/jce/provider/JDKKeyFactory$ECGOST3410;
.super Lorg/bouncycastle/jce/provider/JDKKeyFactory$EC;
.source "JDKKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECGOST3410"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 758
    const-string v0, "ECGOST3410"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JDKKeyFactory$EC;-><init>(Ljava/lang/String;)V

    .line 759
    return-void
.end method
