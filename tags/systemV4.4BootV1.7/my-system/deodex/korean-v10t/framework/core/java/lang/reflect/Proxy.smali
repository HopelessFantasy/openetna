.class public Ljava/lang/reflect/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static NextClassNameIndex:I = 0x0

.field private static final loaderCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private static final proxyCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1ed825df33efbc35L


# instance fields
.field protected h:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    .line 51
    const/4 v0, 0x0

    sput v0, Ljava/lang/reflect/Proxy;->NextClassNameIndex:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    .line 75
    return-void
.end method

.method private static native constructorPrototype(Ljava/lang/reflect/InvocationHandler;)V
.end method

.method private static native generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/Class;
.end method

.method public static getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .registers 3
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 301
    check-cast p0, Ljava/lang/reflect/Proxy;

    .end local p0
    iget-object v0, p0, Ljava/lang/reflect/Proxy;->h:Ljava/lang/reflect/InvocationHandler;

    return-object v0

    .line 304
    .restart local p0
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K00f1"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    .registers 9
    .parameter "loader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 109
    .local p1, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-nez p1, :cond_8

    .line 110
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 112
    .restart local p0
    :cond_8
    const/4 v0, 0x0

    .line 113
    .local v0, commonPackageName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, p1

    .local v3, length:I
    :goto_b
    if-ge v1, v3, :cond_9d

    .line 114
    aget-object v5, p1, v1

    .line 115
    .local v5, next:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v5, :cond_17

    .line 116
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 118
    .restart local p0
    :cond_17
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 120
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "K00ed"

    .end local p1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-static {p1, v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    .restart local p0
    .restart local p1       #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_2d
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq p0, v2, :cond_53

    .line 124
    const/4 v2, 0x0

    :try_start_34
    invoke-static {v4, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    if-eq v5, v2, :cond_53

    .line 125
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "K00ee"

    .end local p1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-static {p1, v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_34 .. :try_end_46} :catch_46

    .line 128
    :catch_46
    move-exception p0

    .line 129
    .local p0, ex:Ljava/lang/ClassNotFoundException;
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #ex:Ljava/lang/ClassNotFoundException;
    const-string p1, "K00ee"

    invoke-static {p1, v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    .local p0, loader:Ljava/lang/ClassLoader;
    .restart local p1       #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_53
    add-int/lit8 v2, v1, 0x1

    .local v2, j:I
    :goto_55
    if-ge v2, v3, :cond_6a

    .line 134
    aget-object v6, p1, v2

    if-ne v5, v6, :cond_67

    .line 135
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #loader:Ljava/lang/ClassLoader;
    const-string p1, "K00ef"

    .end local p1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-static {p1, v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    .restart local p0       #loader:Ljava/lang/ClassLoader;
    .restart local p1       #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 139
    :cond_6a
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    .end local v2           #j:I
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_82

    .line 140
    const/16 v2, 0x2e

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 141
    .local v2, last:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_85

    .end local v5           #next:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, ""

    .line 142
    .local v2, p:Ljava/lang/String;
    :goto_7f
    if-nez v0, :cond_8b

    .line 143
    move-object v0, v2

    .line 113
    .end local v2           #p:Ljava/lang/String;
    :cond_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 141
    .local v2, last:I
    :cond_85
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_7f

    .line 144
    .local v2, p:Ljava/lang/String;
    :cond_8b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .end local v2           #p:Ljava/lang/String;
    if-nez v2, :cond_82

    .line 145
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #loader:Ljava/lang/ClassLoader;
    const-string p1, "K00f0"

    .end local p1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    .end local v4           #name:Ljava/lang/String;
    .restart local p0       #loader:Ljava/lang/ClassLoader;
    .restart local p1       #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_9d
    sget-object v5, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    monitor-enter v5

    .line 152
    :try_start_a0
    sget-object v1, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    .end local v1           #i:I
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 154
    .local v1, interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    if-nez v1, :cond_b4

    .line 155
    sget-object v2, Ljava/lang/reflect/Proxy;->loaderCache:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    .end local v1           #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .restart local v1       #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b4
    move-object v2, v1

    .line 161
    .end local v1           #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    .local v2, interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    const-string v1, ""

    .line 162
    .local v1, interfaceKey:Ljava/lang/String;
    array-length v1, p1

    .end local v1           #interfaceKey:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_123

    .line 163
    .end local v3           #length:I
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 174
    .restart local v1       #interfaceKey:Ljava/lang/String;
    :goto_c2
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 175
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    if-nez v3, :cond_148

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$Proxy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Ljava/lang/reflect/Proxy;->NextClassNameIndex:I

    add-int/lit8 v6, v4, 0x1

    sput v6, Ljava/lang/reflect/Proxy;->NextClassNameIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, nextClassName:Ljava/lang/String;
    if-eqz v0, :cond_14f

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #commonPackageName:Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .end local v3           #nextClassName:Ljava/lang/String;
    .local v0, nextClassName:Ljava/lang/String;
    :goto_fc
    if-nez p0, :cond_102

    .line 185
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 190
    :cond_102
    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .end local v0           #nextClassName:Ljava/lang/String;
    invoke-static {v0, p1, p0}, Ljava/lang/reflect/Proxy;->generateProxy(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 195
    .local p1, newClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    monitor-enter v0
    :try_end_119
    .catchall {:try_start_a0 .. :try_end_119} :catchall_145

    .line 199
    :try_start_119
    sget-object v1, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    .end local v1           #interfaceKey:Ljava/lang/String;
    const-string v2, ""

    .end local v2           #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    monitor-exit v0
    :try_end_121
    .catchall {:try_start_119 .. :try_end_121} :catchall_142

    .line 204
    :goto_121
    :try_start_121
    monitor-exit v5

    return-object p1

    .line 165
    .local v0, commonPackageName:Ljava/lang/String;
    .restart local v2       #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    .local p1, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v4, names:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, p1

    .local v3, length:I
    :goto_12a
    if-ge v1, v3, :cond_13d

    .line 167
    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_12a

    .line 170
    :cond_13d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_140
    .catchall {:try_start_121 .. :try_end_140} :catchall_145

    move-result-object v1

    .local v1, interfaceKey:Ljava/lang/String;
    goto :goto_c2

    .line 200
    .end local v0           #commonPackageName:Ljava/lang/String;
    .end local v1           #interfaceKey:Ljava/lang/String;
    .end local v2           #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    .end local v3           #length:I
    .end local v4           #names:Ljava/lang/StringBuilder;
    .end local p1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catchall_142
    move-exception p1

    :try_start_143
    monitor-exit v0
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    :try_start_144
    throw p1

    .line 205
    :catchall_145
    move-exception p1

    monitor-exit v5
    :try_end_147
    .catchall {:try_start_144 .. :try_end_147} :catchall_145

    throw p1

    .line 202
    .restart local v0       #commonPackageName:Ljava/lang/String;
    .restart local v1       #interfaceKey:Ljava/lang/String;
    .restart local v2       #interfaceCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;>;"
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;"
    .restart local p1       #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_148
    :try_start_148
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    .end local p1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    check-cast p1, Ljava/lang/Class;
    :try_end_14e
    .catchall {:try_start_148 .. :try_end_14e} :catchall_145

    .local p1, newClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_121

    .local v3, nextClassName:Ljava/lang/String;
    .local p1, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_14f
    move-object v0, v3

    .end local v3           #nextClassName:Ljava/lang/String;
    .local v0, nextClassName:Ljava/lang/String;
    goto :goto_fc
.end method

.method public static isProxyClass(Ljava/lang/Class;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_8

    .line 277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 279
    :cond_8
    sget-object v0, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    monitor-enter v0

    .line 280
    :try_start_b
    sget-object v1, Ljava/lang/reflect/Proxy;->proxyCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 281
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .registers 9
    .parameter "loader"
    .parameter
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 237
    .local p1, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-nez p2, :cond_8

    .line 238
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 241
    :cond_8
    :try_start_8
    invoke-static {p0, p1}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/reflect/InvocationHandler;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_21} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_21} :catch_37
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_21} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_21} :catch_5f

    move-result-object v2

    return-object v2

    .line 244
    :catch_23
    move-exception v2

    move-object v0, v2

    .line 245
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/InternalError;

    check-cast p0, Ljava/lang/InternalError;

    throw p0

    .line 247
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    .restart local p0
    :catch_37
    move-exception v2

    move-object v0, v2

    .line 248
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/InternalError;

    check-cast p0, Ljava/lang/InternalError;

    throw p0

    .line 250
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    .restart local p0
    :catch_4b
    move-exception v2

    move-object v0, v2

    .line 251
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/InternalError;

    check-cast p0, Ljava/lang/InternalError;

    throw p0

    .line 253
    .end local v0           #ex:Ljava/lang/InstantiationException;
    .restart local p0
    :catch_5f
    move-exception v2

    move-object v0, v2

    .line 254
    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 255
    .local v1, target:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/InternalError;

    check-cast p0, Ljava/lang/InternalError;

    throw p0
.end method
