.class final Ljava/security/UnresolvedPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "UnresolvedPermissionCollection.java"


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x6396d132a67b4c70L


# instance fields
.field private transient klasses:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "permissions"

    const-class v4, Ljava/util/Hashtable;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/security/UnresolvedPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 12
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 185
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v7, "permissions"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 186
    .local v5, permissions:Ljava/util/Map;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    .line 187
    iget-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    monitor-enter v7

    .line 188
    :try_start_17
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 189
    .local v2, iter:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_65

    .line 190
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 191
    .local v4, key:Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    .line 192
    .local v6, values:Ljava/util/Collection;
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iterator:Ljava/util/Iterator;
    :cond_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 193
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/UnresolvedPermission;

    .line 195
    .local v0, element:Ljava/security/UnresolvedPermission;
    invoke-virtual {v0}, Ljava/security/UnresolvedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    .line 196
    new-instance v8, Ljava/io/InvalidObjectException;

    const-string v9, "security.22"

    invoke-static {v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 202
    .end local v0           #element:Ljava/security/UnresolvedPermission;
    .end local v2           #iter:Ljava/util/Iterator;
    .end local v3           #iterator:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #values:Ljava/util/Collection;
    :catchall_57
    move-exception v8

    monitor-exit v7
    :try_end_59
    .catchall {:try_start_17 .. :try_end_59} :catchall_57

    throw v8

    .line 200
    .restart local v2       #iter:Ljava/util/Iterator;
    .restart local v3       #iterator:Ljava/util/Iterator;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v6       #values:Ljava/util/Collection;
    :cond_5a
    :try_start_5a
    iget-object v8, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v8, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 202
    .end local v3           #iterator:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #values:Ljava/util/Collection;
    :cond_65
    monitor-exit v7
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_57

    .line 203
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 8
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 168
    .local v3, permissions:Ljava/util/Hashtable;
    iget-object v4, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    .local v2, key:Ljava/lang/String;
    new-instance v5, Ljava/util/Vector;

    iget-object v4, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v5, v4}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 172
    .end local v2           #key:Ljava/lang/String;
    :cond_2c
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 173
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v4, "permissions"

    invoke-virtual {v0, v4, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 175
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 6
    .parameter "permission"

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/security/UnresolvedPermissionCollection;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 73
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "security.15"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_12
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/security/UnresolvedPermission;

    if-eq v2, v3, :cond_28

    .line 77
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.16"

    invoke-static {v3, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_28
    iget-object v2, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    monitor-enter v2

    .line 81
    :try_start_2b
    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, klass:Ljava/lang/String;
    iget-object v3, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 83
    .local v1, klassMates:Ljava/util/Collection;
    if-nez v1, :cond_43

    .line 84
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #klassMates:Ljava/util/Collection;
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 85
    .restart local v1       #klassMates:Ljava/util/Collection;
    iget-object v3, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_43
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v2

    .line 89
    return-void

    .line 88
    .end local v0           #klass:Ljava/lang/String;
    .end local v1           #klassMates:Ljava/util/Collection;
    :catchall_48
    move-exception v3

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_2b .. :try_end_4a} :catchall_48

    throw v3
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 4

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, all:Ljava/util/Collection;
    iget-object v2, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, iter:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 96
    :cond_1f
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method hasUnresolved(Ljava/security/Permission;)Z
    .registers 4
    .parameter "permission"

    .prologue
    .line 115
    iget-object v0, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .parameter "permission"

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method resolveCollection(Ljava/security/Permission;Ljava/security/PermissionCollection;)Ljava/security/PermissionCollection;
    .registers 11
    .parameter "target"
    .parameter "holder"

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, klass:Ljava/lang/String;
    iget-object v6, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 136
    iget-object v6, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    monitor-enter v6

    .line 137
    :try_start_13
    iget-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 138
    .local v4, klassMates:Ljava/util/Collection;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/UnresolvedPermission;

    .line 141
    .local v0, element:Ljava/security/UnresolvedPermission;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/security/UnresolvedPermission;->resolve(Ljava/lang/Class;)Ljava/security/Permission;

    move-result-object v5

    .line 142
    .local v5, resolved:Ljava/security/Permission;
    if-eqz v5, :cond_1f

    .line 143
    if-nez p2, :cond_43

    .line 144
    invoke-virtual {p1}, Ljava/security/Permission;->newPermissionCollection()Ljava/security/PermissionCollection;

    move-result-object p2

    .line 145
    if-nez p2, :cond_43

    .line 146
    new-instance v1, Ljava/security/PermissionsHash;

    invoke-direct {v1}, Ljava/security/PermissionsHash;-><init>()V

    .end local p2
    .local v1, holder:Ljava/security/PermissionCollection;
    move-object p2, v1

    .line 149
    .end local v1           #holder:Ljava/security/PermissionCollection;
    .restart local p2
    :cond_43
    invoke-virtual {p2, v5}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    .line 156
    .end local v0           #element:Ljava/security/UnresolvedPermission;
    .end local v2           #iter:Ljava/util/Iterator;
    .end local v4           #klassMates:Ljava/util/Collection;
    .end local v5           #resolved:Ljava/security/Permission;
    :catchall_4a
    move-exception v7

    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_13 .. :try_end_4c} :catchall_4a

    throw v7

    .line 153
    .restart local v2       #iter:Ljava/util/Iterator;
    .restart local v4       #klassMates:Ljava/util/Collection;
    :cond_4d
    :try_start_4d
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v7

    if-nez v7, :cond_58

    .line 154
    iget-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_58
    monitor-exit v6
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_4a

    .line 158
    .end local v2           #iter:Ljava/util/Iterator;
    .end local v4           #klassMates:Ljava/util/Collection;
    :cond_59
    return-object p2
.end method
