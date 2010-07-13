.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$MD5;
.super Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;
.source "OpenSSLMessageDigestJDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD5"
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
    .line 96
    const-string v0, "MD5"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;-><init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$1;)V

    .line 97
    return-void
.end method
