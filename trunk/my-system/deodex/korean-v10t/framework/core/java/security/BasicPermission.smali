.class public abstract Ljava/security/BasicPermission;
.super Ljava/security/Permission;
.source "BasicPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x57250bdccf4ea67aL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;->checkName(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "action"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;->checkName(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private final checkName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 93
    if-nez p1, :cond_e

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.28"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.29"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_20
    return-void
.end method

.method static nameImplies(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "thisName"
    .parameter "thatName"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 175
    if-ne p0, p1, :cond_6

    move v2, v4

    .line 195
    :goto_5
    return v2

    .line 178
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 179
    .local v0, end:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_12

    move v2, v5

    .line 180
    goto :goto_5

    .line 182
    :cond_12
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_39

    if-eqz v0, :cond_28

    sub-int v2, v0, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_39

    .line 185
    :cond_28
    add-int/lit8 v0, v0, -0x1

    .line 190
    :cond_2a
    move v1, v0

    .local v1, i:I
    :goto_2b
    if-ltz v1, :cond_45

    .line 191
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_42

    move v2, v5

    .line 192
    goto :goto_5

    .line 186
    .end local v1           #i:I
    :cond_39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    if-eq v0, v2, :cond_2a

    move v2, v5

    .line 188
    goto :goto_5

    .line 190
    .restart local v1       #i:I
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    :cond_45
    move v2, v4

    .line 195
    goto :goto_5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 223
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/BasicPermission;->checkName(Ljava/lang/String;)V

    .line 224
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 118
    if-ne p1, p0, :cond_4

    .line 119
    const/4 v0, 0x1

    .line 125
    .end local p1
    :goto_3
    return v0

    .line 122
    .restart local p1
    :cond_4
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    .line 123
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/security/Permission;

    .end local p1
    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 125
    .restart local p1
    :cond_1f
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    const-string v0, ""

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 4
    .parameter "permission"

    .prologue
    .line 163
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 164
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/BasicPermission;->nameImplies(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 166
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 214
    new-instance v0, Ljava/security/BasicPermissionCollection;

    invoke-direct {v0}, Ljava/security/BasicPermissionCollection;-><init>()V

    return-object v0
.end method
