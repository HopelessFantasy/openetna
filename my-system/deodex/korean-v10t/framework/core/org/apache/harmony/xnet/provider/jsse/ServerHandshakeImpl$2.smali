.class Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;
.super Ljava/lang/Object;
.source "ServerHandshakeImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unwrapSSLv2([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->processClientHello()V

    .line 342
    const/4 v0, 0x0

    return-object v0
.end method
