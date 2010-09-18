.class Landroid/net/http/SSLConnectionClosedByUserException;
.super Ljavax/net/ssl/SSLException;
.source "HttpsConnection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 437
    return-void
.end method
