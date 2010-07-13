.class public Lorg/apache/harmony/xnet/provider/jsse/AlertException;
.super Ljava/lang/RuntimeException;
.source "AlertException.java"


# instance fields
.field private final description:B

.field private final reason:Ljavax/net/ssl/SSLException;


# direct methods
.method protected constructor <init>(BLjavax/net/ssl/SSLException;)V
    .registers 3
    .parameter "description"
    .parameter "reason"

    .prologue
    .line 47
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 48
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->reason:Ljavax/net/ssl/SSLException;

    .line 49
    iput-byte p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->description:B

    .line 50
    return-void
.end method


# virtual methods
.method protected getDescriptionCode()B
    .registers 2

    .prologue
    .line 68
    iget-byte v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->description:B

    return v0
.end method

.method protected getReason()Ljavax/net/ssl/SSLException;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->reason:Ljavax/net/ssl/SSLException;

    return-object v0
.end method
