.class public Ljava/io/File;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static caseSensitive:Z = false

.field private static counter:I = 0x0

.field public static final pathSeparator:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final pathSeparatorChar:C = '\u0000'

.field public static final separator:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final separatorChar:C = '\u0000'

.field private static final serialVersionUID:J = 0x42da4450e0de4ffL


# instance fields
.field private path:Ljava/lang/String;

.field transient properPath:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-static {}, Ljava/io/File;->oneTimeInitialization()V

    .line 108
    const-string v0, "file.separator"

    const-string v1, "/"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Ljava/io/File;->separatorChar:C

    .line 109
    const-string v0, "path.separator"

    const-string v1, ";"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Ljava/io/File;->pathSeparatorChar:C

    .line 110
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    sget-char v2, Ljava/io/File;->separatorChar:C

    aput-char v2, v1, v3

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    sput-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    sget-char v2, Ljava/io/File;->pathSeparatorChar:C

    aput-char v2, v1, v3

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    sput-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 112
    sput-boolean v4, Ljava/io/File;->caseSensitive:Z

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    if-nez p2, :cond_b

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 131
    :cond_b
    if-nez p1, :cond_14

    .line 132
    invoke-direct {p0, p2}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 136
    :goto_13
    return-void

    .line 134
    :cond_14
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/io/File;->calculatePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_13
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-direct {p0, p1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "dirPath"
    .parameter "name"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    if-nez p2, :cond_b

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 166
    :cond_b
    if-nez p1, :cond_14

    .line 167
    invoke-direct {p0, p2}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 171
    :goto_13
    return-void

    .line 169
    :cond_14
    invoke-direct {p0, p1, p2}, Ljava/io/File;->calculatePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_13
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-direct {p0, p1}, Ljava/io/File;->checkURI(Ljava/net/URI;)V

    .line 191
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 192
    return-void
.end method

.method private calculatePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "dirPath"
    .parameter "name"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 198
    invoke-direct {p0, p2}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, separatorIndex:I
    :goto_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_22

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_22

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 205
    :cond_22
    if-lez v0, :cond_2c

    .line 206
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 210
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_52

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_52

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .end local v0           #separatorIndex:I
    :goto_51
    return-object v1

    .line 214
    .restart local v0       #separatorIndex:I
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_51

    .end local v0           #separatorIndex:I
    :cond_6a
    move-object v1, p1

    .line 217
    goto :goto_51
.end method

.method private checkURI(Ljava/net/URI;)V
    .registers 9
    .parameter "uri"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "K031e"

    .line 221
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_17

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K031a"

    invoke-static {v2, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_17
    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K031b"

    invoke-static {v2, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_2f
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, temp:Ljava/lang/String;
    if-eqz v0, :cond_3d

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 229
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K031c"

    invoke-static {v2, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_49
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_61

    .line 234
    :cond_55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K031d"

    invoke-static {v2, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_61
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K031e"

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "authority"

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6, v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_7f
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K031e"

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "query"

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6, v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_9d
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_bb

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K031e"

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "fragment"

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6, v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_bb
    return-void
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1233
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 10
    .parameter "prefix"
    .parameter "suffix"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1260
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_13

    .line 1261
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "K006b"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1263
    :cond_13
    if-nez p1, :cond_3c

    const-string v4, ".tmp"

    move-object v0, v4

    .line 1264
    .local v0, newSuffix:Ljava/lang/String;
    :goto_18
    const-string v2, "."

    .line 1265
    .local v2, tmpDir:Ljava/lang/String;
    new-instance v4, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v5, "java.io.tmpdir"

    const-string v6, "."

    invoke-direct {v4, v5, v6}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tmpDir:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1267
    .restart local v2       #tmpDir:Ljava/lang/String;
    if-nez p2, :cond_3e

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 1270
    .local v3, tmpDirFile:Ljava/io/File;
    :cond_31
    :goto_31
    invoke-static {p0, v0, v3}, Ljava/io/File;->genTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1271
    .local v1, result:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1272
    return-object v1

    .end local v0           #newSuffix:Ljava/lang/String;
    .end local v1           #result:Ljava/io/File;
    .end local v2           #tmpDir:Ljava/lang/String;
    .end local v3           #tmpDirFile:Ljava/io/File;
    :cond_3c
    move-object v0, p1

    .line 1263
    goto :goto_18

    .restart local v0       #newSuffix:Ljava/lang/String;
    .restart local v2       #tmpDir:Ljava/lang/String;
    :cond_3e
    move-object v3, p2

    .line 1267
    goto :goto_31
.end method

.method private native deleteDirImpl([B)Z
.end method

.method private native deleteFileImpl([B)Z
.end method

.method private native existsImpl([B)Z
.end method

.method private fixSlashes(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "origPath"

    .prologue
    .line 284
    const/4 v8, 0x1

    .line 285
    .local v8, uncIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const/4 v3, 0x0

    .line 286
    .local v3, newLength:I
    sget-char v9, Ljava/io/File;->separatorChar:C

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_31

    .line 287
    const/4 v8, 0x0

    .line 292
    :cond_d
    :goto_d
    const/4 v0, 0x0

    .line 293
    .local v0, foundSlash:Z
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 294
    .local v5, newPath:[C
    const/4 v1, 0x0

    .local v1, i:I
    move v4, v3

    .end local v3           #newLength:I
    .local v4, newLength:I
    :goto_14
    if-ge v1, v2, :cond_6a

    .line 295
    aget-char v6, v5, v1

    .line 296
    .local v6, pathChar:C
    const/16 v9, 0x5c

    if-eq v6, v9, :cond_20

    const/16 v9, 0x2f

    if-ne v6, v9, :cond_3f

    .line 298
    :cond_20
    if-eqz v0, :cond_24

    if-eq v1, v8, :cond_26

    :cond_24
    if-nez v0, :cond_90

    .line 299
    :cond_26
    add-int/lit8 v3, v4, 0x1

    .end local v4           #newLength:I
    .restart local v3       #newLength:I
    sget-char v9, Ljava/io/File;->separatorChar:C

    aput-char v9, v5, v4

    .line 300
    const/4 v0, 0x1

    .line 294
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3           #newLength:I
    .restart local v4       #newLength:I
    goto :goto_14

    .line 288
    .end local v0           #foundSlash:Z
    .end local v1           #i:I
    .end local v4           #newLength:I
    .end local v5           #newPath:[C
    .end local v6           #pathChar:C
    .restart local v3       #newLength:I
    :cond_31
    const/4 v9, 0x2

    if-le v2, v9, :cond_d

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_d

    .line 289
    const/4 v8, 0x2

    goto :goto_d

    .line 304
    .end local v3           #newLength:I
    .restart local v0       #foundSlash:Z
    .restart local v1       #i:I
    .restart local v4       #newLength:I
    .restart local v5       #newPath:[C
    .restart local v6       #pathChar:C
    :cond_3f
    const/16 v9, 0x3a

    if-ne v6, v9, :cond_8e

    if-lez v8, :cond_8e

    const/4 v9, 0x2

    if-eq v4, v9, :cond_52

    const/4 v9, 0x3

    if-ne v4, v9, :cond_8e

    const/4 v9, 0x1

    aget-char v9, v5, v9

    sget-char v10, Ljava/io/File;->separatorChar:C

    if-ne v9, v10, :cond_8e

    :cond_52
    const/4 v9, 0x0

    aget-char v9, v5, v9

    sget-char v10, Ljava/io/File;->separatorChar:C

    if-ne v9, v10, :cond_8e

    .line 308
    const/4 v9, 0x0

    const/4 v10, 0x1

    sub-int v10, v4, v10

    aget-char v10, v5, v10

    aput-char v10, v5, v9

    .line 309
    const/4 v3, 0x1

    .line 311
    .end local v4           #newLength:I
    .restart local v3       #newLength:I
    const/4 v8, 0x2

    .line 313
    :goto_63
    add-int/lit8 v4, v3, 0x1

    .end local v3           #newLength:I
    .restart local v4       #newLength:I
    aput-char v6, v5, v3

    .line 314
    const/4 v0, 0x0

    move v3, v4

    .end local v4           #newLength:I
    .restart local v3       #newLength:I
    goto :goto_2d

    .line 318
    .end local v3           #newLength:I
    .end local v6           #pathChar:C
    .restart local v4       #newLength:I
    :cond_6a
    if-eqz v0, :cond_8c

    add-int/lit8 v9, v8, 0x1

    if-gt v4, v9, :cond_7a

    const/4 v9, 0x2

    if-ne v4, v9, :cond_8c

    const/4 v9, 0x0

    aget-char v9, v5, v9

    sget-char v10, Ljava/io/File;->separatorChar:C

    if-eq v9, v10, :cond_8c

    .line 320
    :cond_7a
    add-int/lit8 v3, v4, -0x1

    .line 322
    .end local v4           #newLength:I
    .restart local v3       #newLength:I
    :goto_7c
    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v5, v9, v3}, Ljava/lang/String;-><init>([CII)V

    .line 324
    .local v7, tempPath:Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8a

    move-object v9, v7

    .line 327
    :goto_89
    return-object v9

    :cond_8a
    move-object v9, p1

    goto :goto_89

    .end local v3           #newLength:I
    .end local v7           #tempPath:Ljava/lang/String;
    .restart local v4       #newLength:I
    :cond_8c
    move v3, v4

    .end local v4           #newLength:I
    .restart local v3       #newLength:I
    goto :goto_7c

    .end local v3           #newLength:I
    .restart local v4       #newLength:I
    .restart local v6       #pathChar:C
    :cond_8e
    move v3, v4

    .end local v4           #newLength:I
    .restart local v3       #newLength:I
    goto :goto_63

    .end local v3           #newLength:I
    .restart local v4       #newLength:I
    :cond_90
    move v3, v4

    .end local v4           #newLength:I
    .restart local v3       #newLength:I
    goto :goto_2d
.end method

.method private static genTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 7
    .parameter "prefix"
    .parameter "suffix"
    .parameter "directory"

    .prologue
    const v3, 0xffff

    .line 1276
    sget v2, Ljava/io/File;->counter:I

    if-nez v2, :cond_17

    .line 1277
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 1278
    .local v0, newInt:I
    div-int v2, v0, v3

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x2710

    sput v2, Ljava/io/File;->counter:I

    .line 1280
    .end local v0           #newInt:I
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1281
    .local v1, newName:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    sget v2, Ljava/io/File;->counter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Ljava/io/File;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1283
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private getAbsoluteName()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x2f

    .line 1412
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 1413
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1415
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_35

    .line 1417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1420
    :cond_35
    sget-char v2, Ljava/io/File;->separatorChar:C

    if-eq v2, v4, :cond_3f

    .line 1421
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 1423
    :cond_3f
    return-object v1
.end method

.method private native getCanonImpl([B)[B
.end method

.method private native getLinkImpl([B)[B
.end method

.method private static native isCaseSensitiveImpl()Z
.end method

.method private native isDirectoryImpl([B)Z
.end method

.method private native isFileImpl([B)Z
.end method

.method private native isHiddenImpl([B)Z
.end method

.method private native isReadableImpl([B)Z
.end method

.method private native isWriteableImpl([B)Z
.end method

.method private native lastModifiedImpl([B)J
.end method

.method private native lengthImpl([B)J
.end method

.method private static synchronized native declared-synchronized listImpl([B)[[B
.end method

.method public static listRoots()[Ljava/io/File;
    .registers 5

    .prologue
    .line 267
    invoke-static {}, Ljava/io/File;->rootsImpl()[[B

    move-result-object v2

    .line 268
    .local v2, rootsList:[[B
    if-nez v2, :cond_a

    .line 269
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/io/File;

    .line 275
    :goto_9
    return-object v3

    .line 271
    :cond_a
    array-length v3, v2

    new-array v1, v3, [Ljava/io/File;

    .line 272
    .local v1, result:[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v3, v2

    if-ge v0, v3, :cond_21

    .line 273
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Util;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_21
    move-object v3, v1

    .line 275
    goto :goto_9
.end method

.method private native mkdirImpl([B)Z
.end method

.method private native newFileImpl([B)I
.end method

.method private static native oneTimeInitialization()V
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1434
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1435
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v0

    .line 1436
    .local v0, inSeparator:C
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 1437
    return-void
.end method

.method private native renameToImpl([B[B)Z
.end method

.method private static native rootsImpl()[[B
.end method

.method private native setLastModifiedImpl([BJ)Z
.end method

.method private native setReadOnlyImpl([B)Z
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1427
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1428
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeChar(I)V

    .line 1430
    return-void
.end method


# virtual methods
.method public canRead()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 340
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 341
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 342
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 345
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0, v2}, Ljava/io/File;->properPath(Z)[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;->isReadableImpl([B)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v2

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public canWrite()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 360
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 361
    .local v1, security:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_c

    .line 362
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 366
    :cond_c
    const/4 v0, 0x0

    .line 367
    .local v0, exists:Z
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    .line 368
    invoke-virtual {p0, v3}, Ljava/io/File;->properPath(Z)[B

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/File;->existsImpl([B)Z

    move-result v0

    .line 371
    :cond_1d
    if-eqz v0, :cond_2b

    invoke-virtual {p0, v3}, Ljava/io/File;->properPath(Z)[B

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/File;->isWriteableImpl([B)Z

    move-result v2

    if-eqz v2, :cond_2b

    move v2, v3

    :goto_2a
    return v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method public compareTo(Ljava/io/File;)I
    .registers 4
    .parameter "another"

    .prologue
    .line 387
    sget-boolean v0, Ljava/io/File;->caseSensitive:Z

    if-eqz v0, :cond_11

    .line 388
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 390
    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_10
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 54
    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public createNewFile()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1166
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 1167
    .local v3, security:Ljava/lang/SecurityManager;
    if-eqz v3, :cond_c

    .line 1168
    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1170
    :cond_c
    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_20

    .line 1171
    new-instance v4, Ljava/io/IOException;

    const-string v5, "KA012"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1173
    :cond_20
    invoke-virtual {p0, v5}, Ljava/io/File;->properPath(Z)[B

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/File;->newFileImpl([B)I

    move-result v2

    .line 1174
    .local v2, result:I
    packed-switch v2, :pswitch_data_7a

    .line 1182
    const/4 v0, 0x0

    .line 1184
    .local v0, msg:Ljava/lang/String;
    :try_start_2c
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_33} :catch_78

    move-result-object v1

    .line 1185
    .local v1, parent:Ljava/io/File;
    if-nez v1, :cond_5d

    .line 1205
    .end local v1           #parent:Ljava/io/File;
    :cond_36
    :goto_36
    if-nez v0, :cond_3a

    .line 1206
    const-string v0, "Cannot create"

    .line 1208
    :cond_3a
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0           #msg:Ljava/lang/String;
    :pswitch_59
    move v4, v5

    .line 1178
    :goto_5a
    return v4

    :pswitch_5b
    const/4 v4, 0x0

    goto :goto_5a

    .line 1191
    .restart local v0       #msg:Ljava/lang/String;
    .restart local v1       #parent:Ljava/io/File;
    :cond_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_66

    .line 1192
    const-string v0, "Parent directory of file does not exist"

    goto :goto_36

    .line 1193
    :cond_66
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_6f

    .line 1194
    const-string v0, "Parent of file is not a directory"

    goto :goto_36

    .line 1195
    :cond_6f
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_36

    .line 1196
    const-string v0, "Parent directory of file is not writable"
    :try_end_77
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_77} :catch_78

    goto :goto_36

    .line 1198
    .end local v1           #parent:Ljava/io/File;
    :catch_78
    move-exception v4

    goto :goto_36

    .line 1174
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_59
        :pswitch_5b
    .end packed-switch
.end method

.method public delete()Z
    .registers 4

    .prologue
    .line 404
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 405
    .local v1, security:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_b

    .line 406
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 408
    :cond_b
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/io/File;->properPath(Z)[B

    move-result-object v0

    .line 409
    .local v0, propPath:[B
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_23

    invoke-direct {p0, v0}, Ljava/io/File;->isDirectoryImpl([B)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 410
    invoke-direct {p0, v0}, Ljava/io/File;->deleteDirImpl([B)Z

    move-result v2

    .line 412
    :goto_22
    return v2

    :cond_23
    invoke-direct {p0, v0}, Ljava/io/File;->deleteFileImpl([B)Z

    move-result v2

    goto :goto_22
.end method

.method public deleteOnExit()V
    .registers 4

    .prologue
    .line 430
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 431
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 432
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 435
    :cond_b
    invoke-static {}, Ljava/io/DeleteOnExit;->getInstance()Ljava/io/DeleteOnExit;

    move-result-object v1

    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DeleteOnExit;->addFile(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 451
    instance-of v0, p1, Ljava/io/File;

    if-nez v0, :cond_6

    .line 452
    const/4 v0, 0x0

    .line 457
    .end local p1
    :goto_5
    return v0

    .line 454
    .restart local p1
    :cond_6
    sget-boolean v0, Ljava/io/File;->caseSensitive:Z

    if-nez v0, :cond_17

    .line 455
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    .line 457
    .restart local p1
    :cond_17
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public exists()Z
    .registers 3

    .prologue
    .line 472
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 473
    const/4 v1, 0x0

    .line 479
    :goto_9
    return v1

    .line 475
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 476
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 477
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 479
    :cond_15
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/File;->properPath(Z)[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;->existsImpl([B)Z

    move-result v1

    goto :goto_9
.end method

.method public getAbsoluteFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 504
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 492
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/io/File;->properPath(Z)[B

    move-result-object v0

    .line 493
    .local v0, absolute:[B
    invoke-static {v0}, Lorg/apache/harmony/luni/util/Util;->toString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCanonicalFile()Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/File;->properPath(Z)[B

    move-result-object v17

    .line 526
    .local v17, result:[B
    const/4 v5, 0x0

    .line 527
    .local v5, exists:Z
    move-object/from16 v16, v17

    .line 529
    .local v16, pathBytes:[B
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;->getLinkImpl([B)[B

    move-result-object v11

    .line 530
    .local v11, linkBytes:[B
    move-object v0, v11

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_39

    .line 548
    :goto_1a
    if-eqz v5, :cond_1e

    .line 549
    move-object/from16 v17, v16

    .line 552
    :cond_1e
    const/4 v15, 0x1

    .line 553
    .local v15, numSeparators:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_20
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v7

    move/from16 v1, v21

    if-ge v0, v1, :cond_a0

    .line 554
    aget-byte v21, v17, v7

    sget-char v22, Ljava/io/File;->separatorChar:C

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_36

    .line 555
    add-int/lit8 v15, v15, 0x1

    .line 553
    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 533
    .end local v7           #i:I
    .end local v15           #numSeparators:I
    :cond_39
    const/16 v21, 0x0

    aget-byte v21, v11, v21

    sget-char v22, Ljava/io/File;->separatorChar:C

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_52

    .line 534
    move-object/from16 v16, v11

    .line 546
    :goto_47
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;->existsImpl([B)Z

    move-result v5

    .line 547
    if-nez v5, :cond_d

    goto :goto_1a

    .line 536
    :cond_52
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v8, v21, v22

    .line 537
    .local v8, index:I
    :goto_5b
    aget-byte v21, v16, v8

    sget-char v22, Ljava/io/File;->separatorChar:C

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_68

    .line 538
    add-int/lit8 v8, v8, -0x1

    goto :goto_5b

    .line 540
    :cond_68
    add-int/lit8 v21, v8, 0x1

    move-object v0, v11

    array-length v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 541
    .local v20, temp:[B
    const/16 v21, 0x0

    const/16 v22, 0x0

    add-int/lit8 v23, v8, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    const/16 v21, 0x0

    add-int/lit8 v22, v8, 0x1

    move-object v0, v11

    array-length v0, v0

    move/from16 v23, v0

    move-object v0, v11

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    move-object/from16 v16, v20

    goto :goto_47

    .line 558
    .end local v8           #index:I
    .end local v20           #temp:[B
    .restart local v7       #i:I
    .restart local v15       #numSeparators:I
    :cond_a0
    move v0, v15

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 559
    .local v19, sepLocations:[I
    const/16 v18, 0x0

    .line 560
    .local v18, rootLoc:I
    sget-char v21, Ljava/io/File;->separatorChar:C

    const/16 v22, 0x2f

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_da

    .line 561
    const/16 v21, 0x0

    aget-byte v21, v17, v21

    const/16 v22, 0x5c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10a

    .line 562
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_105

    const/16 v21, 0x1

    aget-byte v21, v17, v21

    const/16 v22, 0x5c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_105

    const/16 v21, 0x1

    move/from16 v18, v21

    .line 567
    :cond_da
    :goto_da
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object v14, v0

    .line 568
    .local v14, newResult:[B
    const/4 v12, 0x0

    .local v12, newLength:I
    const/4 v10, 0x0

    .local v10, lastSlash:I
    const/4 v6, 0x0

    .line 569
    .local v6, foundDots:I
    aput v18, v19, v10

    .line 570
    const/4 v7, 0x0

    :goto_ec
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v7

    move/from16 v1, v21

    if-gt v0, v1, :cond_12d

    .line 571
    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_10d

    .line 572
    add-int/lit8 v13, v12, 0x1

    .end local v12           #newLength:I
    .local v13, newLength:I
    aget-byte v21, v17, v7

    aput-byte v21, v14, v12

    move v12, v13

    .line 570
    .end local v13           #newLength:I
    .restart local v12       #newLength:I
    :goto_102
    add-int/lit8 v7, v7, 0x1

    goto :goto_ec

    .line 562
    .end local v6           #foundDots:I
    .end local v10           #lastSlash:I
    .end local v12           #newLength:I
    .end local v14           #newResult:[B
    :cond_105
    const/16 v21, 0x0

    move/from16 v18, v21

    goto :goto_da

    .line 564
    :cond_10a
    const/16 v18, 0x2

    goto :goto_da

    .line 574
    .restart local v6       #foundDots:I
    .restart local v10       #lastSlash:I
    .restart local v12       #newLength:I
    .restart local v14       #newResult:[B
    :cond_10d
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v7

    move/from16 v1, v21

    if-eq v0, v1, :cond_121

    aget-byte v21, v17, v7

    sget-char v22, Ljava/io/File;->separatorChar:C

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_199

    .line 575
    :cond_121
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v7

    move/from16 v1, v21

    if-ne v0, v1, :cond_15b

    if-nez v6, :cond_15b

    .line 610
    :cond_12d
    add-int/lit8 v21, v18, 0x1

    move v0, v12

    move/from16 v1, v21

    if-le v0, v1, :cond_144

    const/16 v21, 0x1

    sub-int v21, v12, v21

    aget-byte v21, v14, v21

    sget-char v22, Ljava/io/File;->separatorChar:C

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_144

    .line 612
    add-int/lit8 v12, v12, -0x1

    .line 614
    :cond_144
    const/16 v21, 0x0

    aput-byte v21, v14, v12

    .line 615
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Ljava/io/File;->getCanonImpl([B)[B

    move-result-object v14

    .line 616
    array-length v12, v14

    .line 617
    const/16 v21, 0x0

    move-object v0, v14

    move/from16 v1, v21

    move v2, v12

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/util/Util;->toString([BII)Ljava/lang/String;

    move-result-object v21

    return-object v21

    .line 578
    :cond_15b
    const/16 v21, 0x1

    move v0, v6

    move/from16 v1, v21

    if-ne v0, v1, :cond_164

    .line 580
    const/4 v6, 0x0

    .line 581
    goto :goto_102

    .line 583
    :cond_164
    const/16 v21, 0x1

    move v0, v6

    move/from16 v1, v21

    if-le v0, v1, :cond_187

    .line 585
    const/16 v21, 0x1

    sub-int v21, v6, v21

    move v0, v10

    move/from16 v1, v21

    if-le v0, v1, :cond_182

    const/16 v21, 0x1

    sub-int v21, v6, v21

    sub-int v21, v10, v21

    move/from16 v10, v21

    .line 587
    :goto_17c
    aget v21, v19, v10

    add-int/lit8 v12, v21, 0x1

    .line 588
    const/4 v6, 0x0

    .line 589
    goto :goto_102

    .line 585
    :cond_182
    const/16 v21, 0x0

    move/from16 v10, v21

    goto :goto_17c

    .line 591
    :cond_187
    add-int/lit8 v10, v10, 0x1

    aput v12, v19, v10

    .line 592
    add-int/lit8 v13, v12, 0x1

    .end local v12           #newLength:I
    .restart local v13       #newLength:I
    sget-char v21, Ljava/io/File;->separatorChar:C

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v14, v12

    move v12, v13

    .line 593
    .end local v13           #newLength:I
    .restart local v12       #newLength:I
    goto/16 :goto_102

    .line 595
    :cond_199
    aget-byte v21, v17, v7

    const/16 v22, 0x2e

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a7

    .line 596
    add-int/lit8 v6, v6, 0x1

    .line 597
    goto/16 :goto_102

    .line 600
    :cond_1a7
    if-lez v6, :cond_1b8

    .line 601
    const/4 v9, 0x0

    .local v9, j:I
    move v13, v12

    .end local v12           #newLength:I
    .restart local v13       #newLength:I
    :goto_1ab
    if-ge v9, v6, :cond_1b7

    .line 602
    add-int/lit8 v12, v13, 0x1

    .end local v13           #newLength:I
    .restart local v12       #newLength:I
    const/16 v21, 0x2e

    aput-byte v21, v14, v13

    .line 601
    add-int/lit8 v9, v9, 0x1

    move v13, v12

    .end local v12           #newLength:I
    .restart local v13       #newLength:I
    goto :goto_1ab

    :cond_1b7
    move v12, v13

    .line 605
    .end local v9           #j:I
    .end local v13           #newLength:I
    .restart local v12       #newLength:I
    :cond_1b8
    add-int/lit8 v13, v12, 0x1

    .end local v12           #newLength:I
    .restart local v13       #newLength:I
    aget-byte v21, v17, v7

    aput-byte v21, v14, v12

    .line 606
    const/4 v6, 0x0

    move v12, v13

    .end local v13           #newLength:I
    .restart local v12       #newLength:I
    goto/16 :goto_102
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 644
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 645
    .local v0, separatorIndex:I
    if-gez v0, :cond_d

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method public getParent()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 658
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const/4 v0, 0x0

    .line 659
    .local v0, firstInPath:I
    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1e

    const/4 v3, 0x2

    if-le v2, v3, :cond_1e

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1e

    .line 660
    const/4 v0, 0x2

    .line 662
    :cond_1e
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 663
    .local v1, index:I
    if-ne v1, v5, :cond_2b

    if-lez v0, :cond_2b

    .line 664
    const/4 v1, 0x2

    .line 666
    :cond_2b
    if-eq v1, v5, :cond_39

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sub-int v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_3b

    .line 667
    :cond_39
    const/4 v3, 0x0

    .line 673
    :goto_3a
    return-object v3

    .line 669
    :cond_3b
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v1, :cond_58

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_58

    .line 671
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    .line 673
    :cond_58
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a
.end method

.method public getParentFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 685
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, tempParent:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 687
    const/4 v1, 0x0

    .line 689
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 699
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    const v1, 0x12d591

    .line 712
    sget-boolean v0, Ljava/io/File;->caseSensitive:Z

    if-eqz v0, :cond_f

    .line 713
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    .line 715
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_e
.end method

.method public isAbsolute()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 733
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    move v0, v2

    goto :goto_14
.end method

.method public isDirectory()Z
    .registers 3

    .prologue
    .line 753
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 754
    const/4 v1, 0x0

    .line 760
    :goto_9
    return v1

    .line 756
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 757
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 758
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 760
    :cond_15
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/File;->properPath(Z)[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;->isDirectoryImpl([B)Z

    move-result v1

    goto :goto_9
.end method

.method public isFile()Z
    .registers 3

    .prologue
    .line 776
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 777
    const/4 v1, 0x0

    .line 783
    :goto_9
    return v1

    .line 779
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 780
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 781
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 783
    :cond_15
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/File;->properPath(Z)[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;->isFileImpl([B)Z

    move-result v1

    goto :goto_9
.end method

.method public isHidden()Z
    .registers 3

    .prologue
    .line 802
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 803
    const/4 v1, 0x0

    .line 809
    :goto_9
    return v1

    .line 805
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 806
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 807
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 809
    :cond_15
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/File;->properPath(Z)[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;->isHiddenImpl([B)Z

    move-result v1

    goto :goto_9
.end method

.method public lastModified()J
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 833
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 834
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_d

    .line 835
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 837
    :cond_d
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/io/File;->properPath(Z)[B

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/io/File;->lastModifiedImpl([B)J

    move-result-wide v0

    .line 839
    .local v0, result:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_20

    cmp-long v3, v0, v5

    if-nez v3, :cond_22

    :cond_20
    move-wide v3, v5

    .line 842
    :goto_21
    return-wide v3

    :cond_22
    move-wide v3, v0

    goto :goto_21
.end method

.method public length()J
    .registers 4

    .prologue
    .line 906
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 907
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 908
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 910
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/File;->properPath(Z)[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;->lengthImpl([B)J

    move-result-wide v1

    return-wide v1
.end method

.method public list()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 932
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 933
    .local v3, security:Ljava/lang/SecurityManager;
    if-eqz v3, :cond_b

    .line 934
    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 936
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_13

    .line 937
    const/4 v4, 0x0

    .line 947
    :goto_12
    return-object v4

    .line 939
    :cond_13
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/io/File;->properPath(Z)[B

    move-result-object v4

    invoke-static {v4}, Ljava/io/File;->listImpl([B)[[B

    move-result-object v0

    .line 940
    .local v0, implList:[[B
    if-nez v0, :cond_22

    .line 941
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    goto :goto_12

    .line 943
    :cond_22
    array-length v4, v0

    new-array v2, v4, [Ljava/lang/String;

    .line 944
    .local v2, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_26
    array-length v4, v0

    if-ge v1, v4, :cond_34

    .line 945
    aget-object v4, v0, v1

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Util;->toString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 944
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_34
    move-object v4, v2

    .line 947
    goto :goto_12
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .registers 9
    .parameter "filter"

    .prologue
    .line 1070
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 1071
    .local v4, security:Ljava/lang/SecurityManager;
    if-eqz v4, :cond_b

    .line 1072
    iget-object v6, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1074
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_13

    .line 1075
    const/4 v6, 0x0

    .line 1090
    :goto_12
    return-object v6

    .line 1077
    :cond_13
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Ljava/io/File;->properPath(Z)[B

    move-result-object v6

    invoke-static {v6}, Ljava/io/File;->listImpl([B)[[B

    move-result-object v1

    .line 1078
    .local v1, implList:[[B
    if-nez v1, :cond_22

    .line 1079
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    goto :goto_12

    .line 1081
    :cond_22
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 1082
    .local v5, tempResult:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_28
    array-length v6, v1

    if-ge v2, v6, :cond_3f

    .line 1083
    aget-object v6, v1, v2

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, aName:Ljava/lang/String;
    if-eqz p1, :cond_39

    invoke-interface {p1, p0, v0}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1085
    :cond_39
    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1082
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1088
    .end local v0           #aName:Ljava/lang/String;
    :cond_3f
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 1089
    .local v3, result:[Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object v6, v3

    .line 1090
    goto :goto_12
.end method

.method public listFiles()[Ljava/io/File;
    .registers 7

    .prologue
    .line 964
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 965
    .local v3, tempNames:[Ljava/lang/String;
    if-nez v3, :cond_8

    .line 966
    const/4 v4, 0x0

    .line 973
    :goto_7
    return-object v4

    .line 968
    :cond_8
    array-length v1, v3

    .line 969
    .local v1, resultLength:I
    new-array v2, v1, [Ljava/io/File;

    .line 970
    .local v2, results:[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_1a

    .line 971
    new-instance v4, Ljava/io/File;

    aget-object v5, v3, v0

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v2, v0

    .line 970
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1a
    move-object v4, v2

    .line 973
    goto :goto_7
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 9
    .parameter "filter"

    .prologue
    .line 1028
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 1029
    .local v4, security:Ljava/lang/SecurityManager;
    if-eqz v4, :cond_b

    .line 1030
    iget-object v6, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 1032
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_13

    .line 1033
    const/4 v6, 0x0

    .line 1047
    .end local p0
    :goto_12
    return-object v6

    .line 1035
    .restart local p0
    :cond_13
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Ljava/io/File;->properPath(Z)[B

    move-result-object v6

    invoke-static {v6}, Ljava/io/File;->listImpl([B)[[B

    move-result-object v2

    .line 1036
    .local v2, implList:[[B
    if-nez v2, :cond_22

    .line 1037
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/io/File;

    goto :goto_12

    .line 1039
    :cond_22
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .local v5, tempResult:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    const/4 v3, 0x0

    .local v3, index:I
    :goto_28
    array-length v6, v2

    if-ge v3, v6, :cond_44

    .line 1041
    aget-object v6, v2, v3

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Util;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 1042
    .local v1, aName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1043
    .local v0, aFile:Ljava/io/File;
    if-eqz p1, :cond_3e

    invoke-interface {p1, v0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1044
    :cond_3e
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 1047
    .end local v0           #aFile:Ljava/io/File;
    .end local v1           #aName:Ljava/lang/String;
    :cond_44
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/io/File;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/io/File;

    move-object v6, p0

    goto :goto_12
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 8
    .parameter "filter"

    .prologue
    .line 997
    invoke-virtual {p0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 998
    .local v3, tempNames:[Ljava/lang/String;
    if-nez v3, :cond_8

    .line 999
    const/4 v4, 0x0

    .line 1006
    :goto_7
    return-object v4

    .line 1001
    :cond_8
    array-length v1, v3

    .line 1002
    .local v1, resultLength:I
    new-array v2, v1, [Ljava/io/File;

    .line 1003
    .local v2, results:[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_1a

    .line 1004
    new-instance v4, Ljava/io/File;

    aget-object v5, v3, v0

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v2, v0

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1a
    move-object v4, v2

    .line 1006
    goto :goto_7
.end method

.method public mkdir()Z
    .registers 3

    .prologue
    .line 1108
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1109
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 1110
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1112
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/File;->properPath(Z)[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;->mkdirImpl([B)Z

    move-result v1

    return v1
.end method

.method public mkdirs()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1132
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    .line 1148
    :goto_9
    return v1

    .line 1137
    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v3

    .line 1138
    goto :goto_9

    .line 1141
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, parentDir:Ljava/lang/String;
    if-nez v0, :cond_1a

    move v1, v2

    .line 1144
    goto :goto_9

    .line 1148
    :cond_1a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v3

    goto :goto_9

    :cond_2d
    move v1, v2

    goto :goto_9
.end method

.method properPath(Z)[B
    .registers 7
    .parameter "internal"

    .prologue
    const-string v4, "user.dir"

    .line 1299
    iget-object v2, p0, Ljava/io/File;->properPath:[B

    if-eqz v2, :cond_9

    .line 1300
    iget-object v2, p0, Ljava/io/File;->properPath:[B

    .line 1320
    :goto_8
    return-object v2

    .line 1302
    :cond_9
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v2, v3, :cond_25

    .line 1303
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Util;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Ljava/io/File;->properPath:[B

    goto :goto_8

    .line 1307
    :cond_25
    if-eqz p1, :cond_43

    .line 1308
    new-instance v2, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v3, "user.dir"

    invoke-direct {v2, v4}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1313
    .local v1, userdir:Ljava/lang/String;
    :goto_34
    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4a

    .line 1314
    invoke-static {v1}, Lorg/apache/harmony/luni/util/Util;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Ljava/io/File;->properPath:[B

    goto :goto_8

    .line 1311
    .end local v1           #userdir:Ljava/lang/String;
    :cond_43
    const-string v2, "user.dir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #userdir:Ljava/lang/String;
    goto :goto_34

    .line 1316
    :cond_4a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1317
    .local v0, length:I
    if-lez v0, :cond_75

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v2, v3, :cond_75

    .line 1318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Util;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Ljava/io/File;->properPath:[B

    goto :goto_8

    .line 1320
    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Util;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Ljava/io/File;->properPath:[B

    goto/16 :goto_8
.end method

.method public renameTo(Ljava/io/File;)Z
    .registers 5
    .parameter "dest"

    .prologue
    const/4 v2, 0x1

    .line 1341
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1342
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_11

    .line 1343
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1344
    iget-object v1, p1, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 1346
    :cond_11
    invoke-virtual {p0, v2}, Ljava/io/File;->properPath(Z)[B

    move-result-object v1

    invoke-virtual {p1, v2}, Ljava/io/File;->properPath(Z)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/io/File;->renameToImpl([B[B)Z

    move-result v1

    return v1
.end method

.method public setLastModified(J)Z
    .registers 6
    .parameter "time"

    .prologue
    .line 863
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_12

    .line 864
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K006a"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 866
    :cond_12
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 867
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1d

    .line 868
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 870
    :cond_1d
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/File;->properPath(Z)[B

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Ljava/io/File;->setLastModifiedImpl([BJ)Z

    move-result v1

    return v1
.end method

.method public setReadOnly()Z
    .registers 3

    .prologue
    .line 887
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 888
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 889
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 891
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/File;->properPath(Z)[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;->setReadOnlyImpl([B)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1360
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const-string v0, "file"

    .line 1372
    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    move-result-object v3

    .line 1374
    .local v3, name:Ljava/lang/String;
    :try_start_7
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1376
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3           #name:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    :goto_32
    return-object v0

    .line 1379
    .restart local v3       #name:Ljava/lang/String;
    :cond_33
    const-string v0, "//"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1380
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 1383
    .end local v3           #name:Ljava/lang/String;
    :catch_44
    move-exception v0

    move-object v6, v0

    .local v6, e:Ljava/net/URISyntaxException;
    move-object v0, v7

    .line 1385
    goto :goto_32

    .line 1382
    .end local v6           #e:Ljava/net/URISyntaxException;
    .restart local v3       #name:Ljava/lang/String;
    :cond_48
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_52} :catch_44

    goto :goto_32
.end method

.method public toURL()Ljava/net/URL;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const-string v1, "file"

    const-string v2, ""

    .line 1400
    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    move-result-object v4

    .line 1401
    .local v4, name:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1403
    new-instance v0, Ljava/net/URL;

    const-string v6, "file"

    const-string v6, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4           #name:Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 1408
    :goto_34
    return-object v0

    .line 1405
    .restart local v4       #name:Ljava/lang/String;
    :cond_35
    const-string v0, "//"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1406
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_34

    .line 1408
    :cond_56
    new-instance v0, Ljava/net/URL;

    const-string v6, "file"

    const-string v6, ""

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_34
.end method
