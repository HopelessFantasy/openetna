.class final Ljava/security/AllPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "AllPermissionCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/AllPermissionCollection$SingletonEnumeration;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x37d7405c183cd706L


# instance fields
.field private transient all:Ljava/security/Permission;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "all_allowed"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/security/AllPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 75
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 136
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v1, "all_allowed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 137
    new-instance v1, Ljava/security/AllPermission;

    invoke-direct {v1}, Ljava/security/AllPermission;-><init>()V

    iput-object v1, p0, Ljava/security/AllPermissionCollection;->all:Ljava/security/Permission;

    .line 139
    :cond_14
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 126
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "all_allowed"

    iget-object v2, p0, Ljava/security/AllPermissionCollection;->all:Ljava/security/Permission;

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_b
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 127
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 128
    return-void

    .line 126
    :cond_12
    const/4 v2, 0x0

    goto :goto_b
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 4
    .parameter "permission"

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/security/AllPermissionCollection;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 55
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "security.15"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_12
    instance-of v0, p1, Ljava/security/AllPermission;

    if-nez v0, :cond_22

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.16"

    invoke-static {v1, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_22
    iput-object p1, p0, Ljava/security/AllPermissionCollection;->all:Ljava/security/Permission;

    .line 62
    return-void
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
    .line 68
    new-instance v0, Ljava/security/AllPermissionCollection$SingletonEnumeration;

    iget-object v1, p0, Ljava/security/AllPermissionCollection;->all:Ljava/security/Permission;

    invoke-direct {v0, v1}, Ljava/security/AllPermissionCollection$SingletonEnumeration;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .parameter "permission"

    .prologue
    .line 116
    iget-object v0, p0, Ljava/security/AllPermissionCollection;->all:Ljava/security/Permission;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
