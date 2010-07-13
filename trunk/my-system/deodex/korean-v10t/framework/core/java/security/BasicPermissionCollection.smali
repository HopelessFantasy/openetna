.class final Ljava/security/BasicPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "BasicPermissionCollection.java"


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0xa4287048dede3c7L


# instance fields
.field private transient allEnabled:Z

.field private transient items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private permClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "all_allowed"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "permissions"

    const-class v4, Ljava/util/Hashtable;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "permClass"

    const-class v4, Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/security/BasicPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 193
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    .line 196
    monitor-enter p0

    .line 197
    :try_start_c
    const-string v2, "permClass"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iput-object v2, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    .line 198
    iget-object v3, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    const-string v2, "permissions"

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 200
    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Permission;>;"
    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Permission;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    if-eq v2, v3, :cond_33

    .line 202
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "security.24"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Permission;>;"
    :catchall_53
    move-exception v2

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_c .. :try_end_55} :catchall_53

    throw v2

    .line 205
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Permission;>;"
    :cond_56
    :try_start_56
    const-string v2, "all_allowed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Ljava/security/BasicPermissionCollection;->allEnabled:Z

    .line 206
    iget-boolean v2, p0, Ljava/security/BasicPermissionCollection;->allEnabled:Z

    if-eqz v2, :cond_79

    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 207
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "security.25"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_56 .. :try_end_7a} :catchall_53

    .line 211
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
    .line 178
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 179
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "all_allowed"

    iget-boolean v2, p0, Ljava/security/BasicPermissionCollection;->allEnabled:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 180
    const-string v1, "permissions"

    new-instance v2, Ljava/util/Hashtable;

    iget-object v3, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v1, "permClass"

    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 183
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 9
    .parameter "permission"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "security.16"

    .line 67
    invoke-virtual {p0}, Ljava/security/BasicPermissionCollection;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 68
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "security.15"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_16
    if-nez p1, :cond_24

    .line 71
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.20"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, inClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/security/Permission;>;"
    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    if-eqz v2, :cond_3c

    .line 76
    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    if-eq v2, v0, :cond_67

    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.16"

    invoke-static {v4, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_3c
    instance-of v2, p1, Ljava/security/BasicPermission;

    if-nez v2, :cond_4c

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.16"

    invoke-static {v4, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_4c
    monitor-enter p0

    .line 88
    :try_start_4d
    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    if-eqz v2, :cond_64

    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    if-eq v0, v2, :cond_64

    .line 89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.16"

    invoke-static {v3, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :catchall_61
    move-exception v2

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_4d .. :try_end_63} :catchall_61

    throw v2

    .line 92
    :cond_64
    :try_start_64
    iput-object v0, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    .line 93
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_61

    .line 97
    :cond_67
    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-boolean v2, p0, Ljava/security/BasicPermissionCollection;->allEnabled:Z

    if-nez v2, :cond_82

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_86

    const/16 v2, 0x2a

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_86

    :cond_82
    move v2, v6

    :goto_83
    iput-boolean v2, p0, Ljava/security/BasicPermissionCollection;->allEnabled:Z

    .line 100
    return-void

    :cond_86
    move v2, v5

    .line 99
    goto :goto_83
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2
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
    .line 106
    iget-object v0, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 11
    .parameter "permission"

    .prologue
    const/16 v8, 0x2e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 119
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    if-eq v3, v4, :cond_10

    :cond_e
    move v3, v6

    .line 152
    :goto_f
    return v3

    .line 122
    :cond_10
    iget-boolean v3, p0, Ljava/security/BasicPermissionCollection;->allEnabled:Z

    if-eqz v3, :cond_16

    move v3, v7

    .line 123
    goto :goto_f

    .line 125
    :cond_16
    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, checkName:Ljava/lang/String;
    iget-object v3, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move v3, v7

    .line 128
    goto :goto_f

    .line 132
    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 135
    .local v1, name:[C
    array-length v3, v1

    const/4 v4, 0x2

    sub-int v2, v3, v4

    .line 136
    .local v2, pos:I
    :goto_2c
    if-ltz v2, :cond_32

    .line 137
    aget-char v3, v1, v2

    if-ne v3, v8, :cond_4b

    .line 141
    :cond_32
    if-ltz v2, :cond_59

    .line 142
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2a

    aput-char v4, v1, v3

    .line 143
    iget-object v3, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    invoke-direct {v4, v1, v6, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    move v3, v7

    .line 144
    goto :goto_f

    .line 136
    :cond_4b
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    .line 146
    :cond_4e
    add-int/lit8 v2, v2, -0x1

    :goto_50
    if-ltz v2, :cond_32

    .line 147
    aget-char v3, v1, v2

    if-eq v3, v8, :cond_32

    .line 146
    add-int/lit8 v2, v2, -0x1

    goto :goto_50

    :cond_59
    move v3, v6

    .line 152
    goto :goto_f
.end method
