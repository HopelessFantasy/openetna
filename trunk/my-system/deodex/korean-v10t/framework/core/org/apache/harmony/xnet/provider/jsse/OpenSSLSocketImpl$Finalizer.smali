.class Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;
.super Ljava/lang/Thread;
.source "OpenSSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Finalizer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 1008
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1010
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$800(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/net/Socket;

    move-result-object v1

    .line 1012
    .local v1, underlyingSocket:Ljava/net/Socket;
    :try_start_6
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_c

    .line 1026
    :goto_b
    return-void

    .line 1013
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 1018
    .local v0, ex:Ljava/io/IOException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1020
    sget-object v2, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trouble finalizing SSL socket ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method
