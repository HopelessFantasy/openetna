.class public final Ljava/io/FilePermission;
.super Ljava/security/Permission;
.source "FilePermission.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final actionList:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x6e0f9f93f4c0a9bbL


# instance fields
.field private actions:Ljava/lang/String;

.field private transient allDir:Z

.field private transient allSubdir:Z

.field private transient canonPath:Ljava/lang/String;

.field private transient includeAll:Z

.field transient mask:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "write"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "execute"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "delete"

    aput-object v2, v0, v1

    sput-object v0, Ljava/io/FilePermission;->actionList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "path"
    .parameter "actions"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/FilePermission;->mask:I

    .line 71
    iput-boolean v1, p0, Ljava/io/FilePermission;->includeAll:Z

    .line 73
    iput-boolean v1, p0, Ljava/io/FilePermission;->allDir:Z

    .line 75
    iput-boolean v1, p0, Ljava/io/FilePermission;->allSubdir:Z

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/io/FilePermission;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private getMask(Ljava/lang/String;)I
    .registers 8
    .parameter "actionNames"

    .prologue
    .line 174
    const/4 v1, 0x0

    .local v1, actionInt:I
    const/4 v2, 0x0

    .local v2, head:I
    const/4 v3, 0x0

    .line 176
    .local v3, tail:I
    :cond_3
    const-string v4, ","

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 177
    if-lez v3, :cond_23

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 179
    .local v0, action:Ljava/lang/String;
    :goto_14
    const-string v4, "read"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 180
    or-int/lit8 v1, v1, 0x8

    .line 191
    :goto_1e
    add-int/lit8 v2, v3, 0x1

    .line 192
    if-gtz v3, :cond_3

    .line 193
    return v1

    .line 177
    .end local v0           #action:Ljava/lang/String;
    :cond_23
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_14

    .line 181
    .restart local v0       #action:Ljava/lang/String;
    :cond_2d
    const-string v4, "write"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 182
    or-int/lit8 v1, v1, 0x4

    goto :goto_1e

    .line 183
    :cond_38
    const-string v4, "execute"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 184
    or-int/lit8 v1, v1, 0x2

    goto :goto_1e

    .line 185
    :cond_43
    const-string v4, "delete"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 186
    or-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 188
    :cond_4e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "K006f"

    invoke-static {v5, v0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "path"
    .parameter "pathActions"

    .prologue
    const/4 v2, 0x1

    const-string v4, "-"

    const-string v3, "*"

    .line 99
    if-eqz p2, :cond_f

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 100
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K006d"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1b
    invoke-direct {p0, p2}, Ljava/io/FilePermission;->toCanonicalActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    .line 104
    if-nez p1, :cond_2f

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K006e"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2f
    const-string v0, "<<ALL FILES>>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 108
    iput-boolean v2, p0, Ljava/io/FilePermission;->includeAll:Z

    .line 127
    :cond_39
    :goto_39
    return-void

    .line 110
    :cond_3a
    new-instance v0, Ljava/io/FilePermission$1;

    invoke-direct {v0, p0, p1}, Ljava/io/FilePermission$1;-><init>(Ljava/io/FilePermission;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    .line 120
    const-string v0, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 121
    :cond_6a
    iput-boolean v2, p0, Ljava/io/FilePermission;->allDir:Z

    .line 123
    :cond_6c
    const-string v0, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 124
    :cond_8f
    iput-boolean v2, p0, Ljava/io/FilePermission;->allSubdir:Z

    goto :goto_39
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 390
    invoke-virtual {p0}, Ljava/io/FilePermission;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljava/io/FilePermission;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method private toCanonicalActionString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "action"

    .prologue
    const/4 v6, 0x1

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    .line 142
    iget-object v5, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    invoke-direct {p0, v5}, Ljava/io/FilePermission;->getMask(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Ljava/io/FilePermission;->mask:I

    .line 145
    sget-object v5, Ljava/io/FilePermission;->actionList:[Ljava/lang/String;

    array-length v3, v5

    .line 148
    .local v3, len:I
    sub-int v5, v3, v6

    shl-int v1, v6, v5

    .line 151
    .local v1, highestBitMask:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v4, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 153
    .local v0, addedItem:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    if-ge v2, v3, :cond_3c

    .line 154
    iget v5, p0, Ljava/io/FilePermission;->mask:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_37

    .line 155
    if-eqz v0, :cond_2f

    .line 156
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_2f
    sget-object v5, Ljava/io/FilePermission;->actionList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const/4 v0, 0x1

    .line 161
    :cond_37
    shr-int/lit8 v1, v1, 0x1

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 163
    :cond_3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 385
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 220
    instance-of v2, p1, Ljava/io/FilePermission;

    if-eqz v2, :cond_3a

    .line 221
    move-object v0, p1

    check-cast v0, Ljava/io/FilePermission;

    move-object v1, v0

    .line 222
    .local v1, fp:Ljava/io/FilePermission;
    iget-object v2, v1, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    iget-object v3, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    if-eq v2, v3, :cond_1f

    .line 223
    iget-object v2, v1, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, v1, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    iget-object v3, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move v2, v4

    .line 234
    .end local v1           #fp:Ljava/io/FilePermission;
    :goto_1e
    return v2

    .line 229
    .restart local v1       #fp:Ljava/io/FilePermission;
    :cond_1f
    iget-boolean v2, v1, Ljava/io/FilePermission;->includeAll:Z

    if-nez v2, :cond_27

    iget-boolean v2, p0, Ljava/io/FilePermission;->includeAll:Z

    if-eqz v2, :cond_31

    .line 230
    :cond_27
    iget-boolean v2, v1, Ljava/io/FilePermission;->includeAll:Z

    iget-boolean v3, p0, Ljava/io/FilePermission;->includeAll:Z

    if-ne v2, v3, :cond_2f

    const/4 v2, 0x1

    goto :goto_1e

    :cond_2f
    move v2, v4

    goto :goto_1e

    .line 232
    :cond_31
    iget-object v2, v1, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    iget-object v3, p0, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1e

    .end local v1           #fp:Ljava/io/FilePermission;
    :cond_3a
    move v2, v4

    .line 234
    goto :goto_1e
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Ljava/io/FilePermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 379
    iget-object v0, p0, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ljava/io/FilePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    iget v1, p0, Ljava/io/FilePermission;->mask:I

    add-int/2addr v0, v1

    return v0

    :cond_10
    iget-object v0, p0, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_c
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 4
    .parameter "p"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Ljava/io/FilePermission;->impliesMask(Ljava/security/Permission;)I

    move-result v0

    .line 253
    .local v0, match:I
    if-eqz v0, :cond_e

    check-cast p1, Ljava/io/FilePermission;

    .end local p1
    iget v1, p1, Ljava/io/FilePermission;->mask:I

    if-ne v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method impliesMask(Ljava/security/Permission;)I
    .registers 13
    .parameter "p"

    .prologue
    const/4 v10, 0x0

    .line 265
    instance-of v8, p1, Ljava/io/FilePermission;

    if-nez v8, :cond_7

    move v8, v10

    .line 355
    :goto_6
    return v8

    .line 268
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/io/FilePermission;

    move-object v1, v0

    .line 269
    .local v1, fp:Ljava/io/FilePermission;
    iget v8, p0, Ljava/io/FilePermission;->mask:I

    iget v9, v1, Ljava/io/FilePermission;->mask:I

    and-int v4, v8, v9

    .line 271
    .local v4, matchedMask:I
    if-nez v4, :cond_15

    move v8, v10

    .line 272
    goto :goto_6

    .line 276
    :cond_15
    iget-boolean v8, p0, Ljava/io/FilePermission;->includeAll:Z

    if-eqz v8, :cond_1b

    move v8, v4

    .line 277
    goto :goto_6

    .line 281
    :cond_1b
    iget-boolean v8, v1, Ljava/io/FilePermission;->includeAll:Z

    if-eqz v8, :cond_21

    move v8, v10

    .line 282
    goto :goto_6

    .line 287
    :cond_21
    iget-object v8, p0, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 288
    .local v7, thisLength:I
    iget-boolean v8, p0, Ljava/io/FilePermission;->allSubdir:Z

    if-eqz v8, :cond_3a

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3a

    iget-object v8, v1, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    move v8, v4

    .line 290
    goto :goto_6

    .line 293
    :cond_3a
    iget-boolean v8, v1, Ljava/io/FilePermission;->allSubdir:Z

    if-eqz v8, :cond_44

    iget-boolean v8, p0, Ljava/io/FilePermission;->allSubdir:Z

    if-nez v8, :cond_44

    move v8, v10

    .line 294
    goto :goto_6

    .line 297
    :cond_44
    iget-boolean v8, v1, Ljava/io/FilePermission;->allDir:Z

    if-eqz v8, :cond_52

    iget-boolean v8, p0, Ljava/io/FilePermission;->allSubdir:Z

    if-nez v8, :cond_52

    iget-boolean v8, p0, Ljava/io/FilePermission;->allDir:Z

    if-nez v8, :cond_52

    move v8, v10

    .line 298
    goto :goto_6

    .line 301
    :cond_52
    const/4 v3, 0x0

    .line 302
    .local v3, includeDir:Z
    iget-object v8, v1, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 304
    .local v6, pLength:I
    iget-boolean v8, p0, Ljava/io/FilePermission;->allDir:Z

    if-nez v8, :cond_61

    iget-boolean v8, p0, Ljava/io/FilePermission;->allSubdir:Z

    if-eqz v8, :cond_63

    .line 305
    :cond_61
    add-int/lit8 v7, v7, -0x1

    .line 307
    :cond_63
    iget-boolean v8, v1, Ljava/io/FilePermission;->allDir:Z

    if-nez v8, :cond_6b

    iget-boolean v8, v1, Ljava/io/FilePermission;->allSubdir:Z

    if-eqz v8, :cond_6d

    .line 308
    :cond_6b
    add-int/lit8 v6, v6, -0x1

    .line 310
    :cond_6d
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6e
    if-ge v2, v6, :cond_9f

    .line 311
    iget-object v8, v1, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 313
    .local v5, pChar:C
    if-lt v2, v7, :cond_91

    .line 314
    if-ne v2, v7, :cond_85

    .line 317
    iget-boolean v8, p0, Ljava/io/FilePermission;->allSubdir:Z

    if-eqz v8, :cond_80

    move v8, v4

    .line 318
    goto :goto_6

    .line 322
    :cond_80
    iget-boolean v8, p0, Ljava/io/FilePermission;->allDir:Z

    if-eqz v8, :cond_85

    .line 323
    const/4 v3, 0x1

    .line 327
    :cond_85
    if-nez v3, :cond_8a

    move v8, v10

    .line 328
    goto/16 :goto_6

    .line 336
    :cond_8a
    sget-char v8, Ljava/io/File;->separatorChar:C

    if-ne v5, v8, :cond_9c

    move v8, v10

    .line 337
    goto/16 :goto_6

    .line 341
    :cond_91
    iget-object v8, p0, Ljava/io/FilePermission;->canonPath:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v5, :cond_9c

    move v8, v10

    .line 342
    goto/16 :goto_6

    .line 310
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 348
    .end local v5           #pChar:C
    :cond_9f
    if-ne v6, v7, :cond_bf

    .line 349
    iget-boolean v8, p0, Ljava/io/FilePermission;->allSubdir:Z

    if-eqz v8, :cond_b3

    .line 351
    iget-boolean v8, v1, Ljava/io/FilePermission;->allSubdir:Z

    if-nez v8, :cond_ad

    iget-boolean v8, v1, Ljava/io/FilePermission;->allDir:Z

    if-eqz v8, :cond_b0

    :cond_ad
    move v8, v4

    goto/16 :goto_6

    :cond_b0
    move v8, v10

    goto/16 :goto_6

    .line 353
    :cond_b3
    iget-boolean v8, p0, Ljava/io/FilePermission;->allDir:Z

    iget-boolean v9, v1, Ljava/io/FilePermission;->allDir:Z

    if-ne v8, v9, :cond_bc

    move v8, v4

    goto/16 :goto_6

    :cond_bc
    move v8, v10

    goto/16 :goto_6

    .line 355
    :cond_bf
    if-eqz v3, :cond_c4

    move v8, v4

    goto/16 :goto_6

    :cond_c4
    move v8, v10

    goto/16 :goto_6
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 368
    new-instance v0, Ljava/io/FilePermissionCollection;

    invoke-direct {v0}, Ljava/io/FilePermissionCollection;-><init>()V

    return-object v0
.end method
