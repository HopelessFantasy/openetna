.class public abstract Lorg/bouncycastle/jce/provider/JDKECDSAAlgParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "JDKECDSAAlgParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKECDSAAlgParameters$SigAlgParameters;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 14
    return-void
.end method
