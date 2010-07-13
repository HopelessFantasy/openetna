.class public final Ljava/security/AccessController;
.super Ljava/lang/Object;
.source "AccessController.java"


# static fields
.field private static final contexts:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/AccessControlContext;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Error;

    const-string v1, "statics only."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkPermission(Ljava/security/Permission;)V
    .registers 3
    .parameter "perm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/AccessControlException;
        }
    .end annotation

    .prologue
    .line 304
    if-nez p0, :cond_a

    .line 305
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "permission can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_a
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V

    .line 309
    return-void
.end method

.method public static doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, action:Ljava/security/PrivilegedAction;,"Ljava/security/PrivilegedAction<TT;>;"
    if-nez p0, :cond_a

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "action can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_a
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/AccessController;->doPrivilegedImpl(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, action:Ljava/security/PrivilegedAction;,"Ljava/security/PrivilegedAction<TT;>;"
    if-nez p0, :cond_a

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "action can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_a
    invoke-static {p0, p1}, Ljava/security/AccessController;->doPrivilegedImpl(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 141
    .local p0, action:Ljava/security/PrivilegedExceptionAction;,"Ljava/security/PrivilegedExceptionAction<TT;>;"
    if-nez p0, :cond_a

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "action can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_a
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/AccessController;->doPrivilegedImpl(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, action:Ljava/security/PrivilegedExceptionAction;,"Ljava/security/PrivilegedExceptionAction<TT;>;"
    if-nez p0, :cond_a

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "action can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_a
    invoke-static {p0, p1}, Ljava/security/AccessController;->doPrivilegedImpl(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static doPrivilegedImpl(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, action:Ljava/security/PrivilegedAction;,"Ljava/security/PrivilegedAction<TT;>;"
    const/4 v6, 0x1

    .line 241
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 243
    .local v3, currThread:Ljava/lang/Thread;
    if-eqz v3, :cond_b

    sget-object v4, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    if-nez v4, :cond_10

    .line 250
    :cond_b
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object v4

    .line 271
    :cond_f
    :goto_f
    return-object v4

    .line 253
    :cond_10
    const/4 v1, 0x0

    .line 255
    .local v1, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    :try_start_11
    sget-object v5, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    monitor-enter v5
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_41

    .line 256
    :try_start_14
    sget-object v4, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 257
    if-nez v1, :cond_2b

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_3e

    .line 259
    .end local v1           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    .local v2, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    :try_start_25
    sget-object v4, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_4d

    move-object v1, v2

    .line 261
    .end local v2           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    .restart local v1       #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    :cond_2b
    :try_start_2b
    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_3e

    .line 262
    :try_start_2c
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_41

    move-result-object v4

    .line 270
    if-eqz v1, :cond_f

    .line 271
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f

    .line 261
    :catchall_3e
    move-exception v4

    :goto_3f
    :try_start_3f
    monitor-exit v5
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw v4
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 270
    :catchall_41
    move-exception v4

    if-eqz v1, :cond_4c

    .line 271
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4c
    throw v4

    .line 261
    .end local v1           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    .restart local v2       #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    :catchall_4d
    move-exception v4

    move-object v1, v2

    .end local v2           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    .restart local v1       #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    goto :goto_3f
.end method

.method private static doPrivilegedImpl(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .local p0, action:Ljava/security/PrivilegedExceptionAction;,"Ljava/security/PrivilegedExceptionAction<TT;>;"
    const/4 v7, 0x1

    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 192
    .local v3, currThread:Ljava/lang/Thread;
    const/4 v1, 0x0

    .line 195
    .local v1, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    if-eqz v3, :cond_2a

    :try_start_8
    sget-object v5, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    if-eqz v5, :cond_2a

    .line 196
    sget-object v6, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    monitor-enter v6
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_3e

    .line 197
    :try_start_f
    sget-object v5, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 198
    if-nez v1, :cond_26

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_3b

    .line 200
    .end local v1           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    .local v2, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    :try_start_20
    sget-object v5, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v3, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_5b

    move-object v1, v2

    .line 202
    .end local v2           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    .restart local v1       #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    :cond_26
    :try_start_26
    monitor-exit v6
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_3b

    .line 203
    :try_start_27
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_2a
    invoke-interface {p0}, Ljava/security/PrivilegedExceptionAction;->run()Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_3e

    move-result-object v5

    .line 219
    if-eqz v3, :cond_3a

    .line 223
    if-eqz v1, :cond_3a

    .line 225
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3a
    return-object v5

    .line 202
    :catchall_3b
    move-exception v5

    :goto_3c
    :try_start_3c
    monitor-exit v6
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v5
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3e} :catch_3e

    .line 207
    :catch_3e
    move-exception v5

    move-object v4, v5

    .line 212
    .local v4, ex:Ljava/lang/Exception;
    :try_start_40
    instance-of v5, v4, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_55

    .line 213
    check-cast v4, Ljava/lang/RuntimeException;

    .end local v4           #ex:Ljava/lang/Exception;
    throw v4
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_47

    .line 219
    :catchall_47
    move-exception v5

    if-eqz v3, :cond_54

    .line 223
    if-eqz v1, :cond_54

    .line 225
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_54
    throw v5

    .line 217
    .restart local v4       #ex:Ljava/lang/Exception;
    :cond_55
    :try_start_55
    new-instance v5, Ljava/security/PrivilegedActionException;

    invoke-direct {v5, v4}, Ljava/security/PrivilegedActionException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_47

    .line 202
    .end local v1           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v2       #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    :catchall_5b
    move-exception v5

    move-object v1, v2

    .end local v2           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    .restart local v1       #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    goto :goto_3c
.end method

.method public static getContext()Ljava/security/AccessControlContext;
    .registers 9

    .prologue
    const/4 v8, 0x0

    .line 335
    invoke-static {}, Ljava/security/AccessController;->getStackDomains()[Ljava/security/ProtectionDomain;

    move-result-object v3

    .line 337
    .local v3, stack:[Ljava/security/ProtectionDomain;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 338
    .local v2, currThread:Ljava/lang/Thread;
    if-eqz v2, :cond_f

    sget-object v6, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    if-nez v6, :cond_15

    .line 340
    :cond_f
    new-instance v6, Ljava/security/AccessControlContext;

    invoke-direct {v6, v3}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 372
    :goto_14
    return-object v6

    .line 344
    :cond_15
    sget-object v6, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    monitor-enter v6

    .line 345
    :try_start_18
    sget-object v7, Ljava/security/AccessController;->contexts:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 346
    .local v5, threadContexts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    monitor-exit v6
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_5a

    .line 349
    if-eqz v5, :cond_29

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5d

    .line 352
    :cond_29
    invoke-static {v2}, Lorg/apache/harmony/security/fortress/SecurityUtils;->getContext(Ljava/lang/Thread;)Ljava/security/AccessControlContext;

    move-result-object v4

    .line 359
    .local v4, that:Ljava/security/AccessControlContext;
    :goto_2d
    if-eqz v4, :cond_6a

    iget-object v6, v4, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    if-eqz v6, :cond_6a

    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, assigned:[Ljava/security/ProtectionDomain;
    iget-object v6, v4, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    if-eqz v6, :cond_48

    iget-object v6, v4, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    array-length v6, v6

    if-eqz v6, :cond_48

    .line 362
    iget-object v6, v4, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    array-length v6, v6

    new-array v1, v6, [Ljava/security/ProtectionDomain;

    .line 363
    iget-object v6, v4, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    array-length v7, v1

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    :cond_48
    iget-object v6, v4, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    invoke-interface {v6, v3, v1}, Ljava/security/DomainCombiner;->combine([Ljava/security/ProtectionDomain;[Ljava/security/ProtectionDomain;)[Ljava/security/ProtectionDomain;

    move-result-object v0

    .line 366
    .local v0, allpds:[Ljava/security/ProtectionDomain;
    if-nez v0, :cond_52

    .line 367
    new-array v0, v8, [Ljava/security/ProtectionDomain;

    .line 369
    :cond_52
    new-instance v6, Ljava/security/AccessControlContext;

    iget-object v7, v4, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    invoke-direct {v6, v0, v7}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;Ljava/security/DomainCombiner;)V

    goto :goto_14

    .line 346
    .end local v0           #allpds:[Ljava/security/ProtectionDomain;
    .end local v1           #assigned:[Ljava/security/ProtectionDomain;
    .end local v4           #that:Ljava/security/AccessControlContext;
    .end local v5           #threadContexts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    :catchall_5a
    move-exception v7

    :try_start_5b
    monitor-exit v6
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v7

    .line 356
    .restart local v5       #threadContexts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/AccessControlContext;>;"
    :cond_5d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/AccessControlContext;

    .restart local v4       #that:Ljava/security/AccessControlContext;
    goto :goto_2d

    .line 372
    :cond_6a
    new-instance v6, Ljava/security/AccessControlContext;

    invoke-direct {v6, v3, v4}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;Ljava/security/AccessControlContext;)V

    goto :goto_14
.end method

.method private static native getStackDomains()[Ljava/security/ProtectionDomain;
.end method
