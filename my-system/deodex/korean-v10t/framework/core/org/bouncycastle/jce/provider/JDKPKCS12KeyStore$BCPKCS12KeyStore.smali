.class public Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;
.super Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.source "JDKPKCS12KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BCPKCS12KeyStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1503
    const-string v0, "BC"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;-><init>(Ljava/lang/String;)V

    .line 1504
    return-void
.end method
