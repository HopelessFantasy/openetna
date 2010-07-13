.class public Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;
.super Ljava/lang/Object;
.source "DelegatedTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final action:Ljava/security/PrivilegedExceptionAction;

.field private final context:Ljava/security/AccessControlContext;

.field private final handshaker:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;


# direct methods
.method public constructor <init>(Ljava/security/PrivilegedExceptionAction;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Ljava/security/AccessControlContext;)V
    .registers 4
    .parameter "action"
    .parameter "handshaker"
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->action:Ljava/security/PrivilegedExceptionAction;

    .line 49
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->handshaker:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 50
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->context:Ljava/security/AccessControlContext;

    .line 51
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 57
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->handshaker:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    monitor-enter v1

    .line 59
    :try_start_3
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->action:Ljava/security/PrivilegedExceptionAction;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->context:Ljava/security/AccessControlContext;

    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_17
    .catch Ljava/security/PrivilegedActionException; {:try_start_3 .. :try_end_a} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_1a

    .line 67
    :goto_a
    :try_start_a
    monitor-exit v1

    .line 69
    return-void

    .line 60
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 62
    .local v0, e:Ljava/security/PrivilegedActionException;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->handshaker:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    goto :goto_a

    .line 67
    .end local v0           #e:Ljava/security/PrivilegedActionException;
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw v2

    .line 63
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 65
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1c
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;->handshaker:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    iput-object v0, v2, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_17

    goto :goto_a
.end method
