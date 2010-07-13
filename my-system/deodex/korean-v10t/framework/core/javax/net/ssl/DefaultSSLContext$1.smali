.class Ljavax/net/ssl/DefaultSSLContext$1;
.super Ljava/lang/Object;
.source "DefaultSSLContext.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/net/ssl/DefaultSSLContext;->getContext()Ljavax/net/ssl/SSLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljavax/net/ssl/SSLContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p0}, Ljavax/net/ssl/DefaultSSLContext$1;->run()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljavax/net/ssl/SSLContext;
    .registers 2

    .prologue
    .line 45
    invoke-static {}, Ljavax/net/ssl/DefaultSSLContext;->access$000()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method
