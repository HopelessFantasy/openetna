.class Ljavax/net/ssl/SSLSocketFactory$1;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 71
    const-string v2, "ssl.SocketFactory.provider"

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/SSLSocketFactory;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->access$000()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 74
    .local v0, cl:Ljava/lang/ClassLoader;
    if-nez v0, :cond_1d

    .line 75
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 78
    :cond_1d
    :try_start_1d
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/net/SocketFactory;

    invoke-static {p0}, Ljavax/net/ssl/SSLSocketFactory;->access$102(Ljavax/net/SocketFactory;)Ljavax/net/SocketFactory;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2f} :catch_31

    .line 84
    .end local v0           #cl:Ljava/lang/ClassLoader;
    :cond_2f
    const/4 v2, 0x0

    :goto_30
    return-object v2

    .line 80
    .restart local v0       #cl:Ljava/lang/ClassLoader;
    :catch_31
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/Exception;
    move-object v2, v1

    .line 81
    goto :goto_30
.end method
