.class public final Ljava/security/Permissions;
.super Ljava/security/PermissionCollection;
.source "Permissions.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Permissions$MetaEnumeration;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x436d4b4dd2c80f50L


# instance fields
.field private allEnabled:Z

.field private transient klasses:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "perms"

    const-class v4, Ljava/util/Hashtable;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "allPermission"

    const-class v4, Ljava/security/PermissionCollection;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/security/Permissions;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    .line 120
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 222
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 223
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v5, "perms"

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 224
    .local v4, perms:Ljava/util/Map;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    .line 225
    iget-object v6, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    monitor-enter v6

    .line 226
    :try_start_17
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 228
    .local v2, key:Ljava/lang/Class;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PermissionCollection;

    .line 229
    .local v3, pc:Ljava/security/PermissionCollection;
    invoke-virtual {v3}, Ljava/security/PermissionCollection;->elements()Ljava/util/Enumeration;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Permission;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v2, v5, :cond_50

    .line 230
    new-instance v5, Ljava/io/InvalidObjectException;

    const-string v7, "security.22"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 234
    .end local v1           #iter:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Class;
    .end local v3           #pc:Ljava/security/PermissionCollection;
    :catchall_4d
    move-exception v5

    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_17 .. :try_end_4f} :catchall_4d

    throw v5

    .line 232
    .restart local v1       #iter:Ljava/util/Iterator;
    .restart local v2       #key:Ljava/lang/Class;
    .restart local v3       #pc:Ljava/security/PermissionCollection;
    :cond_50
    :try_start_50
    iget-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 234
    .end local v2           #key:Ljava/lang/Class;
    .end local v3           #pc:Ljava/security/PermissionCollection;
    :cond_56
    monitor-exit v6
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_4d

    .line 235
    const-string v5, "allPermission"

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7c

    const/4 v5, 0x1

    :goto_60
    iput-boolean v5, p0, Ljava/security/Permissions;->allEnabled:Z

    .line 236
    iget-boolean v5, p0, Ljava/security/Permissions;->allEnabled:Z

    if-eqz v5, :cond_7e

    iget-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    const-class v6, Ljava/security/AllPermission;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 237
    new-instance v5, Ljava/io/InvalidObjectException;

    const-string v6, "security.23"

    invoke-static {v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 235
    :cond_7c
    const/4 v5, 0x0

    goto :goto_60

    .line 239
    :cond_7e
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 246
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "perms"

    new-instance v2, Ljava/util/Hashtable;

    iget-object v3, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    const-string v1, "allPermission"

    iget-boolean v2, p0, Ljava/security/Permissions;->allEnabled:Z

    if-eqz v2, :cond_25

    iget-object v2, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    const-class v3, Ljava/security/AllPermission;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1e
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 250
    return-void

    .line 247
    :cond_25
    const/4 v2, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 8
    .parameter "permission"

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/security/Permissions;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 80
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "security.15"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 83
    :cond_12
    if-nez p1, :cond_20

    .line 84
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "security.20"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    :cond_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 88
    .local v1, klass:Ljava/lang/Class;
    iget-object v4, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PermissionCollection;

    .line 91
    .local v2, klassMates:Ljava/security/PermissionCollection;
    if-nez v2, :cond_4f

    .line 92
    iget-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    monitor-enter v5

    .line 93
    :try_start_31
    iget-object v4, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/security/PermissionCollection;

    move-object v2, v0

    .line 94
    if-nez v2, :cond_4e

    .line 96
    invoke-virtual {p1}, Ljava/security/Permission;->newPermissionCollection()Ljava/security/PermissionCollection;

    move-result-object v2

    .line 97
    if-nez v2, :cond_49

    .line 98
    new-instance v3, Ljava/security/PermissionsHash;

    invoke-direct {v3}, Ljava/security/PermissionsHash;-><init>()V

    .end local v2           #klassMates:Ljava/security/PermissionCollection;
    .local v3, klassMates:Ljava/security/PermissionCollection;
    move-object v2, v3

    .line 100
    .end local v3           #klassMates:Ljava/security/PermissionCollection;
    .restart local v2       #klassMates:Ljava/security/PermissionCollection;
    :cond_49
    iget-object v4, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_4e
    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_5a

    .line 104
    :cond_4f
    invoke-virtual {v2, p1}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 106
    const-class v4, Ljava/security/AllPermission;

    if-ne v1, v4, :cond_59

    .line 107
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/security/Permissions;->allEnabled:Z

    .line 109
    :cond_59
    return-void

    .line 102
    :catchall_5a
    move-exception v4

    :try_start_5b
    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v4
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/security/Permissions$MetaEnumeration;

    iget-object v1, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/Permissions$MetaEnumeration;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 9
    .parameter "permission"

    .prologue
    const/4 v6, 0x1

    .line 173
    if-nez p1, :cond_f

    .line 175
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "security.21"

    invoke-static {v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    :cond_f
    iget-boolean v5, p0, Ljava/security/Permissions;->allEnabled:Z

    if-eqz v5, :cond_15

    move v5, v6

    .line 214
    :goto_14
    return v5

    .line 180
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 181
    .local v3, klass:Ljava/lang/Class;
    const/4 v4, 0x0

    .line 183
    .local v4, klassMates:Ljava/security/PermissionCollection;
    iget-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    const-class v6, Ljava/security/UnresolvedPermission;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/UnresolvedPermissionCollection;

    .line 185
    .local v1, billets:Ljava/security/UnresolvedPermissionCollection;
    if-eqz v1, :cond_5b

    invoke-virtual {v1, p1}, Ljava/security/UnresolvedPermissionCollection;->hasUnresolved(Ljava/security/Permission;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 187
    iget-object v6, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    monitor-enter v6

    .line 188
    :try_start_2f
    iget-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/security/PermissionCollection;

    move-object v4, v0
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_58

    .line 190
    :try_start_39
    invoke-virtual {v1, p1, v4}, Ljava/security/UnresolvedPermissionCollection;->resolveCollection(Ljava/security/Permission;Ljava/security/PermissionCollection;)Ljava/security/PermissionCollection;
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_53

    move-result-object v4

    .line 197
    :goto_3d
    if-eqz v4, :cond_4b

    .line 200
    :try_start_3f
    iget-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-class v5, Ljava/security/AllPermission;

    if-ne v3, v5, :cond_4b

    .line 203
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/security/Permissions;->allEnabled:Z

    .line 206
    :cond_4b
    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_58

    .line 211
    :goto_4c
    if-eqz v4, :cond_64

    .line 212
    invoke-virtual {v4, p1}, Ljava/security/PermissionCollection;->implies(Ljava/security/Permission;)Z

    move-result v5

    goto :goto_14

    .line 192
    :catch_53
    move-exception v2

    .line 194
    .local v2, ignore:Ljava/lang/Exception;
    :try_start_54
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d

    .line 206
    .end local v2           #ignore:Ljava/lang/Exception;
    :catchall_58
    move-exception v5

    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_58

    throw v5

    .line 208
    :cond_5b
    iget-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #klassMates:Ljava/security/PermissionCollection;
    check-cast v4, Ljava/security/PermissionCollection;

    .restart local v4       #klassMates:Ljava/security/PermissionCollection;
    goto :goto_4c

    .line 214
    :cond_64
    const/4 v5, 0x0

    goto :goto_14
.end method
