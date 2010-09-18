.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA1;
.super Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;
.source "OpenSSLMessageDigestJDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA1"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v0, "SHA-1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;-><init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$1;)V

    .line 103
    return-void
.end method
