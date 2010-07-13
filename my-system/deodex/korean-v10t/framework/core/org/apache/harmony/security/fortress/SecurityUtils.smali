.class public final Lorg/apache/harmony/security/fortress/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static final ACC_CACHE:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext(Ljava/lang/Thread;)Ljava/security/AccessControlContext;
    .registers 3
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 111
    :try_start_3
    sget-object v1, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/AccessControlContext;

    monitor-exit v0

    return-object p0

    .line 112
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static putContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V
    .registers 5
    .parameter "thread"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p0, :cond_e

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.140"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_e
    sget-object v0, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 79
    :try_start_11
    sget-object v1, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 80
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "security.141"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_25

    throw v1

    .line 82
    :cond_28
    if-nez p1, :cond_3f

    .line 84
    :try_start_2a
    sget-object v1, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 85
    new-instance v1, Ljava/lang/Error;

    const-string v2, "security.142"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_3f
    sget-object v1, Lorg/apache/harmony/security/fortress/SecurityUtils;->ACC_CACHE:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_2a .. :try_end_45} :catchall_25

    .line 90
    return-void
.end method
