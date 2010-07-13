.class public abstract Ljava/net/URLStreamHandler;
.super Ljava/lang/Object;
.source "URLStreamHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHost(Ljava/net/URL;)Ljava/lang/String;
    .registers 4
    .parameter "url"

    .prologue
    .line 475
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, host:Ljava/lang/String;
    const-string v1, "file"

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 478
    const-string v0, "localhost"

    .line 480
    :cond_1a
    return-object v0
.end method


# virtual methods
.method protected equals(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 7
    .parameter "url1"
    .parameter "url2"

    .prologue
    const/4 v3, 0x0

    .line 352
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 361
    :goto_8
    return v2

    .line 355
    :cond_9
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    .local v0, s1:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, s2:Ljava/lang/String;
    if-eq v0, v1, :cond_1d

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1b
    move v2, v3

    .line 357
    goto :goto_8

    .line 359
    :cond_1d
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 361
    if-eq v0, v1, :cond_2f

    if-eqz v0, :cond_31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_2f
    const/4 v2, 0x1

    goto :goto_8

    :cond_31
    move v2, v3

    goto :goto_8
.end method

.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 372
    const/4 v0, -0x1

    return v0
.end method

.method protected getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;
    .registers 6
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 385
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move-object v2, v3

    .line 391
    .end local v1           #host:Ljava/lang/String;
    :goto_e
    return-object v2

    .line 389
    .restart local v1       #host:Ljava/lang/String;
    :cond_f
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v2

    goto :goto_e

    .line 390
    .end local v1           #host:Ljava/lang/String;
    :catch_14
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/net/UnknownHostException;
    move-object v2, v3

    .line 391
    goto :goto_e
.end method

.method protected hashCode(Ljava/net/URL;)I
    .registers 3
    .parameter "url"

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 9
    .parameter "url1"
    .parameter "url2"

    .prologue
    const/4 v5, 0x1

    .line 419
    invoke-static {p1}, Ljava/net/URLStreamHandler;->getHost(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .local v2, host1:Ljava/lang/String;
    invoke-static {p2}, Ljava/net/URLStreamHandler;->getHost(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, host2:Ljava/lang/String;
    if-eq v2, v3, :cond_13

    if-eqz v2, :cond_15

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_13
    move v4, v5

    .line 429
    :goto_14
    return v4

    .line 424
    :cond_15
    invoke-virtual {p0, p1}, Ljava/net/URLStreamHandler;->getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v0

    .line 425
    .local v0, address1:Ljava/net/InetAddress;
    invoke-virtual {p0, p2}, Ljava/net/URLStreamHandler;->getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    .line 426
    .local v1, address2:Ljava/net/InetAddress;
    if-eqz v0, :cond_27

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    move v4, v5

    .line 427
    goto :goto_14

    .line 429
    :cond_27
    const/4 v4, 0x0

    goto :goto_14
.end method

.method protected abstract openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 5
    .parameter "u"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "K034d"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 33
    .parameter "u"
    .parameter "str"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 95
    const-string v3, "//"

    move-object/from16 v0, p2

    move-object v1, v3

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/16 v3, 0x2f

    add-int/lit8 v4, p3, 0x2

    move-object/from16 v0, p2

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2f

    const v3, -0x7fffffff

    move/from16 v0, p4

    move v1, v3

    if-gt v0, v1, :cond_2f

    .line 98
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    const/4 v4, 0x2

    sub-int v4, p4, v4

    sub-int v4, v4, p3

    invoke-direct {v3, v4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 100
    :cond_2f
    move/from16 v0, p4

    move/from16 v1, p3

    if-ge v0, v1, :cond_45

    .line 101
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    if-eq v0, v1, :cond_1d4

    .line 102
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3}, Ljava/lang/SecurityException;-><init>()V

    throw v3

    .line 106
    :cond_45
    const-string v21, ""

    .line 107
    .local v21, parseString:Ljava/lang/String;
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_51

    .line 108
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 110
    :cond_51
    sub-int p4, p4, p3

    .line 111
    const/16 v17, 0x0

    .line 114
    .local v17, fileIdx:I
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, host:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v7

    .line 116
    .local v7, port:I
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v12

    .line 117
    .local v12, ref:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, file:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, query:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, authority:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, userInfo:Ljava/lang/String;
    const/16 v3, 0x23

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v26

    .line 123
    .local v26, refIdx:I
    const-string v3, "//"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 124
    const/16 v19, 0x2

    .local v19, hostIdx:I
    const/16 v22, -0x1

    .line 125
    .local v22, portIdx:I
    const/4 v7, -0x1

    .line 126
    const/16 v3, 0x2f

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 127
    const/16 v3, 0x3f

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v25

    .line 128
    .local v25, questionMarkIndex:I
    const/4 v3, -0x1

    move/from16 v0, v25

    move v1, v3

    if-eq v0, v1, :cond_b6

    const/4 v3, -0x1

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_b4

    move/from16 v0, v17

    move/from16 v1, v25

    if-le v0, v1, :cond_b6

    .line 130
    :cond_b4
    move/from16 v17, v25

    .line 132
    :cond_b6
    const/4 v3, -0x1

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_c0

    .line 133
    move/from16 v17, p4

    .line 135
    const-string v10, ""

    .line 137
    :cond_c0
    move/from16 v18, v17

    .line 138
    .local v18, hostEnd:I
    const/4 v3, -0x1

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_d0

    move/from16 v0, v26

    move/from16 v1, v17

    if-ge v0, v1, :cond_d0

    .line 139
    move/from16 v18, v26

    .line 141
    :cond_d0
    const/16 v3, 0x40

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v27

    .line 142
    .local v27, userIdx:I
    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 143
    const/4 v3, -0x1

    move/from16 v0, v27

    move v1, v3

    if-le v0, v1, :cond_f7

    .line 144
    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 145
    add-int/lit8 v19, v27, 0x1

    .line 148
    :cond_f7
    const/16 v3, 0x3a

    const/4 v4, -0x1

    move/from16 v0, v27

    move v1, v4

    if-ne v0, v1, :cond_1d5

    move/from16 v4, v19

    :goto_101
    move-object/from16 v0, v21

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v22

    .line 150
    const/16 v3, 0x5d

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 152
    .local v15, endOfIPv6Addr:I
    const/4 v3, -0x1

    if-eq v15, v3, :cond_12c

    .line 154
    :try_start_115
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v15, 0x1

    if-le v3, v4, :cond_1dd

    .line 155
    add-int/lit8 v3, v15, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_125} :catch_272

    move-result v13

    .line 156
    .local v13, c:C
    const/16 v3, 0x3a

    if-ne v13, v3, :cond_1d9

    .line 157
    add-int/lit8 v22, v15, 0x1

    .line 169
    .end local v13           #c:C
    :cond_12c
    :goto_12c
    const/4 v3, -0x1

    move/from16 v0, v22

    move v1, v3

    if-eq v0, v1, :cond_138

    move/from16 v0, v22

    move/from16 v1, v17

    if-le v0, v1, :cond_1e1

    .line 170
    :cond_138
    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 182
    .end local v15           #endOfIPv6Addr:I
    .end local v18           #hostEnd:I
    .end local v19           #hostIdx:I
    .end local v22           #portIdx:I
    .end local v25           #questionMarkIndex:I
    .end local v27           #userIdx:I
    :cond_142
    :goto_142
    const/4 v3, -0x1

    move/from16 v0, v26

    move v1, v3

    if-le v0, v1, :cond_153

    .line 183
    add-int/lit8 v3, v26, 0x1

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 185
    :cond_153
    const/4 v3, -0x1

    move/from16 v0, v26

    move v1, v3

    if-ne v0, v1, :cond_205

    move/from16 v16, p4

    .line 187
    .local v16, fileEnd:I
    :goto_15b
    const/16 v3, 0x3f

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v24

    .line 188
    .local v24, queryIdx:I
    const/4 v14, 0x0

    .line 189
    .local v14, canonicalize:Z
    const/4 v3, -0x1

    move/from16 v0, v24

    move v1, v3

    if-le v0, v1, :cond_214

    .line 190
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 191
    if-nez v24, :cond_197

    if-eqz v10, :cond_197

    .line 192
    const-string v3, ""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_209

    .line 193
    const-string v10, "/"

    .line 197
    :cond_186
    :goto_186
    const/16 v3, 0x2f

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v20, v3, 0x1

    .line 198
    .local v20, last:I
    const/4 v3, 0x0

    move-object v0, v10

    move v1, v3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 200
    .end local v20           #last:I
    :cond_197
    move/from16 v16, v24

    .line 207
    :cond_199
    :goto_199
    const/4 v3, -0x1

    move/from16 v0, v17

    move v1, v3

    if-le v0, v1, :cond_1bb

    .line 208
    move/from16 v0, v17

    move/from16 v1, p4

    if-ge v0, v1, :cond_218

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_218

    .line 209
    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 227
    :cond_1bb
    :goto_1bb
    if-nez v10, :cond_1bf

    .line 228
    const-string v10, ""

    .line 231
    :cond_1bf
    if-nez v6, :cond_1c3

    .line 232
    const-string v6, ""

    .line 235
    :cond_1c3
    if-eqz v14, :cond_1c9

    .line 237
    invoke-static {v10}, Lorg/apache/harmony/luni/util/URLUtil;->canonicalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 240
    :cond_1c9
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v12}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v6           #host:Ljava/lang/String;
    .end local v7           #port:I
    .end local v8           #authority:Ljava/lang/String;
    .end local v9           #userInfo:Ljava/lang/String;
    .end local v10           #file:Ljava/lang/String;
    .end local v11           #query:Ljava/lang/String;
    .end local v12           #ref:Ljava/lang/String;
    .end local v14           #canonicalize:Z
    .end local v16           #fileEnd:I
    .end local v17           #fileIdx:I
    .end local v21           #parseString:Ljava/lang/String;
    .end local v24           #queryIdx:I
    .end local v26           #refIdx:I
    :cond_1d4
    return-void

    .restart local v6       #host:Ljava/lang/String;
    .restart local v7       #port:I
    .restart local v8       #authority:Ljava/lang/String;
    .restart local v9       #userInfo:Ljava/lang/String;
    .restart local v10       #file:Ljava/lang/String;
    .restart local v11       #query:Ljava/lang/String;
    .restart local v12       #ref:Ljava/lang/String;
    .restart local v17       #fileIdx:I
    .restart local v18       #hostEnd:I
    .restart local v19       #hostIdx:I
    .restart local v21       #parseString:Ljava/lang/String;
    .restart local v22       #portIdx:I
    .restart local v25       #questionMarkIndex:I
    .restart local v26       #refIdx:I
    .restart local v27       #userIdx:I
    :cond_1d5
    move/from16 v4, v27

    .line 148
    goto/16 :goto_101

    .line 159
    .restart local v13       #c:C
    .restart local v15       #endOfIPv6Addr:I
    :cond_1d9
    const/16 v22, -0x1

    goto/16 :goto_12c

    .line 162
    .end local v13           #c:C
    :cond_1dd
    const/16 v22, -0x1

    goto/16 :goto_12c

    .line 172
    :cond_1e1
    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 173
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v0, v21

    move v1, v3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 174
    .local v23, portString:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1ff

    .line 175
    const/4 v7, -0x1

    goto/16 :goto_142

    .line 177
    :cond_1ff
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_142

    .end local v15           #endOfIPv6Addr:I
    .end local v18           #hostEnd:I
    .end local v19           #hostIdx:I
    .end local v22           #portIdx:I
    .end local v23           #portString:Ljava/lang/String;
    .end local v25           #questionMarkIndex:I
    .end local v27           #userIdx:I
    :cond_205
    move/from16 v16, v26

    .line 185
    goto/16 :goto_15b

    .line 194
    .restart local v14       #canonicalize:Z
    .restart local v16       #fileEnd:I
    .restart local v24       #queryIdx:I
    :cond_209
    const-string v3, "/"

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_186

    .line 195
    const/4 v14, 0x1

    goto/16 :goto_186

    .line 203
    :cond_214
    if-eqz v26, :cond_199

    .line 204
    const/4 v11, 0x0

    goto :goto_199

    .line 210
    :cond_218
    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1bb

    .line 211
    if-nez v10, :cond_237

    .line 212
    const-string v10, ""

    .line 218
    :cond_222
    :goto_222
    const/16 v3, 0x2f

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v20, v3, 0x1

    .line 219
    .restart local v20       #last:I
    if-nez v20, :cond_24c

    .line 220
    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_1bb

    .line 213
    .end local v20           #last:I
    :cond_237
    const-string v3, ""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_242

    .line 214
    const-string v10, "/"

    goto :goto_222

    .line 215
    :cond_242
    const-string v3, "/"

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_222

    .line 216
    const/4 v14, 0x1

    goto :goto_222

    .line 222
    .restart local v20       #last:I
    :cond_24c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object v0, v10

    move v1, v4

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1bb

    .line 164
    .end local v14           #canonicalize:Z
    .end local v16           #fileEnd:I
    .end local v20           #last:I
    .end local v24           #queryIdx:I
    .restart local v15       #endOfIPv6Addr:I
    .restart local v18       #hostEnd:I
    .restart local v19       #hostIdx:I
    .restart local v22       #portIdx:I
    .restart local v25       #questionMarkIndex:I
    .restart local v27       #userIdx:I
    :catch_272
    move-exception v3

    goto/16 :goto_12c
.end method

.method protected sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 10
    .parameter "url1"
    .parameter "url2"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 445
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, s1:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, s2:Ljava/lang/String;
    if-eq v2, v3, :cond_16

    if-eqz v2, :cond_14

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    :cond_14
    move v4, v5

    .line 467
    :goto_15
    return v4

    .line 451
    :cond_16
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 453
    if-eq v2, v3, :cond_2a

    if-eqz v2, :cond_28

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    :cond_28
    move v4, v5

    .line 454
    goto :goto_15

    .line 456
    :cond_2a
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v4

    if-nez v4, :cond_32

    move v4, v5

    .line 457
    goto :goto_15

    .line 459
    :cond_32
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 460
    .local v0, p1:I
    if-ne v0, v6, :cond_3c

    .line 461
    invoke-virtual {p0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    .line 463
    :cond_3c
    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 464
    .local v1, p2:I
    if-ne v1, v6, :cond_46

    .line 465
    invoke-virtual {p0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v1

    .line 467
    :cond_46
    if-ne v0, v1, :cond_4a

    const/4 v4, 0x1

    goto :goto_15

    :cond_4a
    move v4, v5

    goto :goto_15
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "u"
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .parameter "ref"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    iget-object v0, p1, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-eq p0, v0, :cond_a

    .line 268
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 270
    :cond_a
    invoke-virtual/range {p1 .. p6}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "u"
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "authority"
    .parameter "userInfo"
    .parameter "file"
    .parameter "query"
    .parameter "ref"

    .prologue
    .line 300
    iget-object v0, p1, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-eq p0, v0, :cond_a

    .line 301
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 303
    :cond_a
    invoke-virtual/range {p1 .. p9}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method protected toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .registers 8
    .parameter "url"

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x10

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 319
    .local v0, answer:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, authority:Ljava/lang/String;
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3c

    .line 323
    const-string v4, "//"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    :cond_3c
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, file:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, ref:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    if-eqz v3, :cond_51

    .line 332
    const/16 v4, 0x23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
