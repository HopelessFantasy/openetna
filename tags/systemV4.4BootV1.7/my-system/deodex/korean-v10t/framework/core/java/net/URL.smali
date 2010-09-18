.class public final Ljava/net/URL;
.super Ljava/lang/Object;
.source "URL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x69dac8c9e5031b8eL

.field private static final specifyStreamHandlerPermission:Ljava/net/NetPermission;

.field private static streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

.field private static streamHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authority:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private hashCode:I

.field private host:Ljava/lang/String;

.field private transient path:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private transient query:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field transient strmHandler:Ljava/net/URLStreamHandler;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "specifyStreamHandler"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URL;->specifyStreamHandlerPermission:Ljava/net/NetPermission;

    .line 114
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 164
    move-object v0, v2

    check-cast v0, Ljava/net/URL;

    move-object v1, v0

    check-cast v2, Ljava/net/URLStreamHandler;

    invoke-direct {p0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 368
    const/4 v5, 0x0

    check-cast v5, Ljava/net/URLStreamHandler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 369
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    .registers 12
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string v5, "K00b3"

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v2, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 78
    iput v3, p0, Ljava/net/URL;->port:I

    .line 86
    iput-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 393
    if-ge p3, v3, :cond_24

    .line 394
    new-instance v2, Ljava/net/MalformedURLException;

    const-string v3, "K0325"

    invoke-static {v3, p3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :cond_24
    if-eqz p2, :cond_4f

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_4f

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_4f

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 402
    :cond_4f
    if-eqz p1, :cond_8c

    .line 403
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 408
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 409
    iput p3, p0, Ljava/net/URL;->port:I

    .line 413
    const/4 v0, -0x1

    .line 414
    .local v0, index:I
    const-string v2, "#"

    const-string v3, "/"

    invoke-virtual {p4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p4, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 415
    if-ltz v0, :cond_98

    .line 416
    invoke-virtual {p4, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 417
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 421
    :goto_74
    invoke-virtual {p0, v4}, Ljava/net/URL;->fixURL(Z)V

    .line 426
    if-nez p5, :cond_9b

    .line 427
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    .line 428
    iget-object v2, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-nez v2, :cond_a8

    .line 429
    new-instance v2, Ljava/net/MalformedURLException;

    const-string v3, "K00b3"

    invoke-static {v5, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 405
    .end local v0           #index:I
    :cond_8c
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "K00b3"

    invoke-static {v5, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    .restart local v0       #index:I
    :cond_98
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    goto :goto_74

    .line 434
    :cond_9b
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 435
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_a6

    .line 436
    sget-object v2, Ljava/net/URL;->specifyStreamHandlerPermission:Ljava/net/NetPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 438
    :cond_a6
    iput-object p5, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    .line 440
    .end local v1           #sm:Ljava/lang/SecurityManager;
    :cond_a8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "protocol"
    .parameter "host"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 345
    const/4 v3, -0x1

    const/4 v5, 0x0

    check-cast v5, Ljava/net/URLStreamHandler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 346
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    check-cast v0, Ljava/net/URLStreamHandler;

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    .registers 32
    .parameter "context"
    .parameter "spec"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 78
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Ljava/net/URL;->port:I

    .line 86
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 91
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 96
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->path:Ljava/lang/String;

    .line 101
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->query:Ljava/lang/String;

    .line 109
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 209
    if-eqz p3, :cond_43

    .line 210
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v25

    .line 211
    .local v25, sm:Ljava/lang/SecurityManager;
    if-eqz v25, :cond_3d

    .line 212
    sget-object v5, Ljava/net/URL;->specifyStreamHandlerPermission:Ljava/net/NetPermission;

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 214
    :cond_3d
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    .line 217
    .end local v25           #sm:Ljava/lang/SecurityManager;
    :cond_43
    if-nez p2, :cond_4b

    .line 218
    new-instance v5, Ljava/net/MalformedURLException;

    invoke-direct {v5}, Ljava/net/MalformedURLException;-><init>()V

    throw v5

    .line 220
    :cond_4b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 227
    const/16 v5, 0x3a

    :try_start_51
    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
    :try_end_57
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_57} :catch_10a

    move-result v24

    .line 231
    .local v24, index:I
    const/16 v5, 0x5b

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    .line 232
    .local v26, startIPv6Addr:I
    if-ltz v24, :cond_127

    .line 233
    const/4 v5, -0x1

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_6f

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_127

    .line 234
    :cond_6f
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v1, v5

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .line 241
    .local v21, c:C
    const/16 v5, 0x61

    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_96

    const/16 v5, 0x7a

    move/from16 v0, v21

    move v1, v5

    if-le v0, v1, :cond_a4

    :cond_96
    const/16 v5, 0x41

    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_115

    const/16 v5, 0x5a

    move/from16 v0, v21

    move v1, v5

    if-gt v0, v1, :cond_115

    :cond_a4
    const/4 v5, 0x1

    move/from16 v27, v5

    .line 242
    .local v27, valid:Z
    :goto_a7
    const/16 v23, 0x1

    .local v23, i:I
    :goto_a9
    if-eqz v27, :cond_11d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_11d

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .line 244
    const/16 v5, 0x61

    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_d3

    const/16 v5, 0x7a

    move/from16 v0, v21

    move v1, v5

    if-le v0, v1, :cond_104

    :cond_d3
    const/16 v5, 0x41

    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_e1

    const/16 v5, 0x5a

    move/from16 v0, v21

    move v1, v5

    if-le v0, v1, :cond_104

    :cond_e1
    const/16 v5, 0x30

    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_ef

    const/16 v5, 0x39

    move/from16 v0, v21

    move v1, v5

    if-le v0, v1, :cond_104

    :cond_ef
    const/16 v5, 0x2b

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_104

    const/16 v5, 0x2d

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_104

    const/16 v5, 0x2e

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_119

    :cond_104
    const/4 v5, 0x1

    move/from16 v27, v5

    .line 242
    :goto_107
    add-int/lit8 v23, v23, 0x1

    goto :goto_a9

    .line 228
    .end local v21           #c:C
    .end local v23           #i:I
    .end local v24           #index:I
    .end local v26           #startIPv6Addr:I
    .end local v27           #valid:Z
    :catch_10a
    move-exception v22

    .line 229
    .local v22, e:Ljava/lang/NullPointerException;
    new-instance v5, Ljava/net/MalformedURLException;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 241
    .end local v22           #e:Ljava/lang/NullPointerException;
    .restart local v21       #c:C
    .restart local v24       #index:I
    .restart local v26       #startIPv6Addr:I
    :cond_115
    const/4 v5, 0x0

    move/from16 v27, v5

    goto :goto_a7

    .line 244
    .restart local v23       #i:I
    .restart local v27       #valid:Z
    :cond_119
    const/4 v5, 0x0

    move/from16 v27, v5

    goto :goto_107

    .line 251
    :cond_11d
    if-nez v27, :cond_19f

    .line 252
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 253
    const/16 v24, -0x1

    .line 263
    .end local v21           #c:C
    .end local v23           #i:I
    .end local v27           #valid:Z
    :cond_127
    :goto_127
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_1af

    .line 268
    if-eqz p1, :cond_17d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17d

    .line 269
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 270
    .local v11, cPath:Ljava/lang/String;
    if-eqz v11, :cond_16c

    const-string v5, "/"

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    if-nez v5, :cond_17d

    .line 276
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    .line 299
    .end local v11           #cPath:Ljava/lang/String;
    :cond_17d
    :goto_17d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    if-nez v5, :cond_1f5

    .line 300
    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->setupStreamHandler()V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    if-nez v5, :cond_1f5

    .line 302
    new-instance v5, Ljava/net/MalformedURLException;

    const-string v6, "K00b3"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v7, v0

    invoke-static {v6, v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 257
    .restart local v21       #c:C
    .restart local v23       #i:I
    .restart local v27       #valid:Z
    :cond_19f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Util;->toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->protocol:Ljava/lang/String;

    goto/16 :goto_127

    .line 284
    .end local v21           #c:C
    .end local v23           #i:I
    .end local v27           #valid:Z
    :cond_1af
    if-nez p1, :cond_1c0

    .line 285
    new-instance v5, Ljava/net/MalformedURLException;

    const-string v6, "K00d8"

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 289
    :cond_1c0
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v20}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    if-nez v5, :cond_17d

    .line 293
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    goto :goto_17d

    .line 317
    :cond_1f5
    :try_start_1f5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, v24

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    :try_end_20b
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_20b} :catch_224

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Ljava/net/URL;->port:I

    move v5, v0

    const/4 v6, -0x1

    if-ge v5, v6, :cond_231

    .line 323
    new-instance v5, Ljava/net/MalformedURLException;

    const-string v6, "K0325"

    move-object/from16 v0, p0

    iget v0, v0, Ljava/net/URL;->port:I

    move v7, v0

    invoke-static {v6, v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 318
    :catch_224
    move-exception v5

    move-object/from16 v22, v5

    .line 319
    .local v22, e:Ljava/lang/Exception;
    new-instance v5, Ljava/net/MalformedURLException;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 326
    .end local v22           #e:Ljava/lang/Exception;
    :cond_231
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 771
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 772
    iget-object v2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-nez v2, :cond_31

    .line 773
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/URL;->fixURL(Z)V

    .line 786
    :cond_10
    :goto_10
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    .line 787
    iget-object v2, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-nez v2, :cond_6f

    .line 788
    new-instance v2, Ljava/io/IOException;

    const-string v3, "K00b3"

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_25} :catch_25

    .line 790
    :catch_25
    move-exception v2

    move-object v0, v2

    .line 791
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 774
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :cond_31
    :try_start_31
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 776
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, index:I
    if-le v1, v4, :cond_48

    .line 777
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 779
    :cond_48
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v4, :cond_6a

    .line 780
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 781
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_10

    .line 783
    :cond_6a
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_6e} :catch_25

    goto :goto_10

    .line 793
    .end local v1           #index:I
    :cond_6f
    return-void
.end method

.method public static declared-synchronized setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .registers 5
    .parameter "streamFactory"

    .prologue
    .line 142
    const-class v1, Ljava/net/URL;

    monitor-enter v1

    :try_start_3
    sget-object v2, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v2, :cond_16

    .line 143
    new-instance v2, Ljava/lang/Error;

    const-string v3, "K004b"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 142
    :catchall_13
    move-exception v2

    monitor-exit v1

    throw v2

    .line 145
    :cond_16
    :try_start_16
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 146
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1f

    .line 147
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 149
    :cond_1f
    sget-object v2, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 150
    sput-object p0, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_13

    .line 151
    monitor-exit v1

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 810
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 514
    if-nez p1, :cond_5

    move v0, v2

    .line 523
    .end local p1
    :goto_4
    return v0

    .line 517
    .restart local p1
    :cond_5
    if-ne p0, p1, :cond_9

    .line 518
    const/4 v0, 0x1

    goto :goto_4

    .line 520
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_15

    move v0, v2

    .line 521
    goto :goto_4

    .line 523
    :cond_15
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    check-cast p1, Ljava/net/URL;

    .end local p1
    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    goto :goto_4
.end method

.method fixURL(Z)V
    .registers 8
    .parameter "fixHost"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 444
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v1, :cond_34

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    .line 445
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 446
    iget v1, p0, Ljava/net/URL;->port:I

    if-eq v1, v3, :cond_34

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/URL;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 450
    :cond_34
    if-eqz p1, :cond_56

    .line 451
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v1, :cond_77

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, index:I
    if-le v0, v3, :cond_77

    .line 452
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 453
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 458
    .end local v0           #index:I
    :cond_56
    :goto_56
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .restart local v0       #index:I
    if-le v0, v3, :cond_7a

    .line 459
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 460
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 465
    .end local v0           #index:I
    :goto_76
    return-void

    .line 455
    :cond_77
    iput-object v5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    goto :goto_56

    .line 462
    :cond_7a
    iput-object v5, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 463
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_76
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 900
    iget-object v0, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPort()I
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 820
    iget-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 830
    iget-object v0, p0, Ljava/net/URL;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 880
    iget-object v0, p0, Ljava/net/URL;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 840
    iget v0, p0, Ljava/net/URL;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 850
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 870
    iget-object v0, p0, Ljava/net/URL;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    .prologue
    .line 860
    iget-object v0, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 890
    iget-object v0, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 549
    iget v0, p0, Ljava/net/URL;->hashCode:I

    if-nez v0, :cond_c

    .line 550
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->hashCode(Ljava/net/URL;)I

    move-result v0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 552
    :cond_c
    iget v0, p0, Ljava/net/URL;->hashCode:I

    return v0
.end method

.method public openConnection()Ljava/net/URLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    if-nez p1, :cond_e

    .line 725
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K034c"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_e
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public final openStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sameFile(Ljava/net/URL;)Z
    .registers 3
    .parameter "otherURL"

    .prologue
    .line 538
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .parameter "ref"

    .prologue
    .line 486
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 487
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 489
    :cond_6
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 490
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 491
    iput p3, p0, Ljava/net/URL;->port:I

    .line 492
    iput-object p5, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 493
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 494
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URL;->fixURL(Z)V

    .line 495
    return-void
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "authority"
    .parameter "userInfo"
    .parameter "path"
    .parameter "query"
    .parameter "ref"

    .prologue
    const-string v2, "?"

    .line 929
    move-object v4, p6

    .line 930
    .local v4, file:Ljava/lang/String;
    if-eqz p7, :cond_26

    const-string v0, ""

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 931
    if-eqz v4, :cond_37

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_26
    :goto_26
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p8

    .line 937
    invoke-virtual/range {v0 .. v5}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 938
    iput-object p4, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 939
    iput-object p5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 940
    iput-object p6, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 941
    iput-object p7, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 942
    return-void

    .line 934
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_26
.end method

.method setupStreamHandler()V
    .registers 8

    .prologue
    const-string v6, ".Handler"

    .line 568
    sget-object v3, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLStreamHandler;

    iput-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    .line 569
    iget-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-eqz v3, :cond_13

    .line 623
    :cond_12
    :goto_12
    return-void

    .line 575
    :cond_13
    sget-object v3, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v3, :cond_2f

    .line 576
    sget-object v3, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    .line 577
    iget-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-eqz v3, :cond_2f

    .line 578
    sget-object v3, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v5, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 585
    :cond_2f
    new-instance v3, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v4, "java.protocol.handler.pkgs"

    invoke-direct {v3, v4}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 588
    .local v1, packageList:Ljava/lang/String;
    if-eqz v1, :cond_8f

    .line 589
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "|"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .local v2, st:Ljava/util/StringTokenizer;
    :goto_45
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".Handler"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, className:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_6f
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v0, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLStreamHandler;

    iput-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    .line 597
    iget-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-eqz v3, :cond_12

    .line 598
    sget-object v3, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v5, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6f .. :try_end_8c} :catch_8d
    .catch Ljava/lang/InstantiationException; {:try_start_6f .. :try_end_8c} :catch_ce
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6f .. :try_end_8c} :catch_cb

    goto :goto_12

    .line 601
    :catch_8d
    move-exception v3

    goto :goto_45

    .line 610
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #st:Ljava/util/StringTokenizer;
    :cond_8f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "org.apache.harmony.luni.internal.net.www.protocol."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".Handler"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .restart local v0       #className:Ljava/lang/String;
    :try_start_aa
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLStreamHandler;

    iput-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;
    :try_end_b6
    .catch Ljava/lang/IllegalAccessException; {:try_start_aa .. :try_end_b6} :catch_c9
    .catch Ljava/lang/InstantiationException; {:try_start_aa .. :try_end_b6} :catch_c7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_aa .. :try_end_b6} :catch_c5

    .line 619
    :goto_b6
    iget-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-eqz v3, :cond_12

    .line 620
    sget-object v3, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v5, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    .line 617
    :catch_c5
    move-exception v3

    goto :goto_b6

    .line 616
    :catch_c7
    move-exception v3

    goto :goto_b6

    .line 615
    :catch_c9
    move-exception v3

    goto :goto_b6

    .line 603
    .restart local v2       #st:Ljava/util/StringTokenizer;
    :catch_cb
    move-exception v3

    goto/16 :goto_45

    .line 602
    :catch_ce
    move-exception v3

    goto/16 :goto_45
.end method

.method public toExternalForm()Ljava/lang/String;
    .registers 3

    .prologue
    .line 751
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_2c

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown protocol("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    :goto_2b
    return-object v0

    :cond_2c
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 740
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 699
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
