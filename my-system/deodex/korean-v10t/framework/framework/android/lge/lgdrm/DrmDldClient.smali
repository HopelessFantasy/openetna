.class public final Landroid/lge/lgdrm/DrmDldClient;
.super Ljava/lang/Thread;
.source "DrmDldClient.java"


# static fields
.field private static final READ_UNIT:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "DrmDldClient"

.field private static final flexUAProfile:Ljava/lang/String; = "BRW_SETTINGDB_UA_PROFILE_I"

.field private static final flexUAString:Ljava/lang/String; = "BRW_SETTINGDB_UA_STRING_I"


# instance fields
.field private client:Landroid/net/http/AndroidHttpClient;

.field private context:Landroid/content/Context;

.field private cookieEndable:Z

.field private nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

.field private objSession:Landroid/lge/lgdrm/DrmObjectSession;

.field private uaProfile:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    return-void
.end method

.method protected constructor <init>(Landroid/lge/lgdrm/DrmObjectSession;Landroid/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V
    .registers 4
    .parameter "objSession"
    .parameter "request"
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    .line 85
    iput-object p2, p0, Landroid/lge/lgdrm/DrmDldClient;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    .line 86
    iput-object p3, p0, Landroid/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    .line 87
    return-void
.end method

.method private httpTransaction(Landroid/lge/lgdrm/DrmDldRequest;)I
    .registers 25
    .parameter "request"

    .prologue
    .line 164
    const/4 v4, 0x0

    .line 165
    .local v4, content:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 169
    .local v10, httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "&#38;"

    const-string v22, "&"

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 170
    .local v19, uri:Ljava/lang/String;
    const-string v20, "DrmDldClient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "uri-replaced:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p1

    iget v0, v0, Landroid/lge/lgdrm/DrmDldRequest;->httpMethod:I

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5c

    .line 174
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_42} :catch_66
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_81

    .end local v10           #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    .local v11, httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    move-object v10, v11

    .line 198
    .end local v11           #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v10       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_43
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/lge/lgdrm/DrmDldClient;->setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/lge/lgdrm/DrmDldRequest;)I

    move-result v20

    if-eqz v20, :cond_95

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 202
    const/16 v20, -0x1

    .line 402
    .end local v19           #uri:Ljava/lang/String;
    :goto_5b
    return v20

    .line 179
    .restart local v19       #uri:Ljava/lang/String;
    :cond_5c
    :try_start_5c
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_64} :catch_66
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_64} :catch_81

    .end local v10           #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v11       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    move-object v10, v11

    .end local v11           #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v10       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_43

    .line 182
    .end local v19           #uri:Ljava/lang/String;
    :catch_66
    move-exception v20

    move-object/from16 v7, v20

    .line 184
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v20, "DrmDldClient"

    const-string v21, "httpTransaction() : Invalid URL"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 189
    const/16 v20, -0x1

    goto :goto_5b

    .line 191
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_81
    move-exception v20

    move-object/from16 v7, v20

    .line 193
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 195
    const/16 v20, -0x1

    goto :goto_5b

    .line 209
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v19       #uri:Ljava/lang/String;
    :cond_95
    :try_start_95
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a1} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a1} :catch_cf

    move-result-object v15

    .line 224
    .local v15, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 226
    .local v17, status:I
    sparse-switch v17, :sswitch_data_29c

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 242
    const/16 v20, -0x1

    goto :goto_5b

    .line 211
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #status:I
    :catch_bb
    move-exception v20

    move-object/from16 v7, v20

    .line 213
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 215
    const/16 v20, -0x1

    goto :goto_5b

    .line 217
    .end local v7           #e:Ljava/io/IOException;
    :catch_cf
    move-exception v20

    move-object/from16 v7, v20

    .line 219
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 221
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 236
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #status:I
    :sswitch_e4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 237
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 246
    :sswitch_f3
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 247
    .local v8, entity:Lorg/apache/http/HttpEntity;
    if-nez v8, :cond_10b

    .line 249
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 251
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 255
    :cond_10b
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v9

    .line 256
    .local v9, hdr:Lorg/apache/http/Header;
    if-nez v9, :cond_123

    .line 258
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 260
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 264
    :cond_123
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, contentType:Ljava/lang/String;
    if-nez v5, :cond_13b

    .line 267
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 269
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 273
    :cond_13b
    const-string v20, "[;]"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 274
    .local v18, subs:[Ljava/lang/String;
    if-nez v18, :cond_158

    .line 276
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 278
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 280
    :cond_158
    const/16 v20, 0x0

    aget-object v20, v18, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 282
    const-string v20, "set-cookie"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    .line 283
    .local v6, cookies:[Lorg/apache/http/Header;
    move-object v0, v6

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_19a

    .line 285
    const/4 v12, 0x0

    .local v12, indx:I
    :goto_170
    move-object v0, v6

    array-length v0, v0

    move/from16 v20, v0

    move v0, v12

    move/from16 v1, v20

    if-ge v0, v1, :cond_19a

    .line 289
    const-string v20, "DrmDldClient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "set-cookie : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v6, v12

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    add-int/lit8 v12, v12, 0x1

    goto :goto_170

    .line 296
    .end local v12           #indx:I
    :cond_19a
    :try_start_19a
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19d} :catch_1c7
    .catch Ljava/lang/IllegalStateException; {:try_start_19a .. :try_end_19d} :catch_1da
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_19d} :catch_1f0

    move-result-object v4

    .line 330
    :try_start_19e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->processInit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_236

    .line 332
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V
    :try_end_1c3
    .catch Ljava/lang/IllegalStateException; {:try_start_19e .. :try_end_1c3} :catch_206
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1c3} :catch_21e

    .line 334
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 298
    :catch_1c7
    move-exception v7

    .line 300
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 306
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 308
    .end local v7           #e:Ljava/io/IOException;
    :catch_1da
    move-exception v7

    .line 310
    .local v7, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 311
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 313
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 315
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_1f0
    move-exception v7

    .line 317
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 325
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 337
    .end local v7           #e:Ljava/lang/Exception;
    :catch_206
    move-exception v20

    move-object/from16 v7, v20

    .line 339
    .local v7, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 340
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 342
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 344
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_21e
    move-exception v20

    move-object/from16 v7, v20

    .line 346
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 349
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 352
    .end local v7           #e:Ljava/lang/Exception;
    :cond_236
    const/16 v16, 0x0

    .line 353
    .local v16, retVal:I
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v20

    if-eqz v20, :cond_268

    .line 356
    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I

    move-result v16

    .line 378
    :goto_249
    if-eqz v16, :cond_25e

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 381
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    .line 387
    :cond_25e
    :try_start_25e
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 389
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_264
    .catch Ljava/io/IOException; {:try_start_25e .. :try_end_264} :catch_287
    .catch Ljava/lang/Exception; {:try_start_25e .. :try_end_264} :catch_291

    move/from16 v20, v16

    .line 402
    goto/16 :goto_5b

    .line 360
    :cond_268
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v13

    .line 362
    .local v13, length:J
    const-wide/16 v20, 0x0

    cmp-long v20, v13, v20

    if-gtz v20, :cond_27e

    .line 368
    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I

    move-result v16

    goto :goto_249

    .line 373
    :cond_27e
    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v2, v13

    invoke-direct {v0, v1, v2, v3}, Landroid/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I

    move-result v16

    goto :goto_249

    .line 391
    .end local v13           #length:J
    :catch_287
    move-exception v20

    move-object/from16 v7, v20

    .line 393
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 394
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 396
    .end local v7           #e:Ljava/io/IOException;
    :catch_291
    move-exception v20

    move-object/from16 v7, v20

    .line 398
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 399
    const/16 v20, -0x1

    goto/16 :goto_5b

    .line 226
    nop

    :sswitch_data_29c
    .sparse-switch
        0xc8 -> :sswitch_f3
        0x194 -> :sswitch_e4
        0x1f6 -> :sswitch_f3
    .end sparse-switch
.end method

.method private processData(Ljava/io/InputStream;J)I
    .registers 13
    .parameter "in"
    .parameter "length"

    .prologue
    const/4 v8, -0x1

    .line 494
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 498
    .local v0, data:[B
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-nez v6, :cond_30

    .line 503
    :cond_b
    :try_start_b
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 504
    .local v3, readLen:I
    if-ne v3, v8, :cond_26

    .line 538
    .end local v3           #readLen:I
    :cond_11
    iget-object v6, p0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Landroid/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v4

    .line 539
    .local v4, retVal:I
    const/4 v5, 0x2

    .line 540
    .local v5, userResponse:I
    packed-switch v4, :pswitch_data_60

    .line 551
    iget-object v6, p0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v4

    .line 552
    if-ne v4, v8, :cond_4c

    move v6, v8

    .line 569
    .end local v4           #retVal:I
    .end local v5           #userResponse:I
    :goto_25
    return v6

    .line 510
    .restart local v3       #readLen:I
    :cond_26
    iget-object v6, p0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6, v0, v3}, Landroid/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v6

    if-eqz v6, :cond_b

    move v6, v8

    .line 513
    goto :goto_25

    .line 519
    .end local v3           #readLen:I
    :cond_30
    const/4 v2, 0x0

    .line 520
    .local v2, index:I
    :goto_31
    int-to-long v6, v2

    cmp-long v6, v6, p2

    if-gez v6, :cond_11

    .line 522
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 523
    .restart local v3       #readLen:I
    if-ne v3, v8, :cond_3e

    move v6, v8

    .line 526
    goto :goto_25

    .line 529
    :cond_3e
    iget-object v6, p0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6, v0, v3}, Landroid/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v6

    if-eqz v6, :cond_48

    move v6, v8

    .line 532
    goto :goto_25

    .line 534
    :cond_48
    add-int/2addr v2, v3

    goto :goto_31

    .end local v2           #index:I
    .end local v3           #readLen:I
    .restart local v4       #retVal:I
    .restart local v5       #userResponse:I
    :pswitch_4a
    move v6, v8

    .line 543
    goto :goto_25

    .line 556
    :cond_4c
    const/4 v6, 0x4

    if-ne v4, v6, :cond_57

    .line 559
    iget-object v6, p0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Landroid/lge/lgdrm/DrmObjectSession;->getNextRequest()Landroid/lge/lgdrm/DrmDldRequest;

    move-result-object v6

    iput-object v6, p0, Landroid/lge/lgdrm/DrmDldClient;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_57} :catch_59

    .line 569
    :cond_57
    const/4 v6, 0x0

    goto :goto_25

    .line 562
    .end local v4           #retVal:I
    .end local v5           #userResponse:I
    :catch_59
    move-exception v6

    move-object v1, v6

    .line 564
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v8

    .line 566
    goto :goto_25

    .line 540
    :pswitch_data_60
    .packed-switch -0x1
        :pswitch_4a
    .end packed-switch
.end method

.method private setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/lge/lgdrm/DrmDldRequest;)I
    .registers 11
    .parameter "httpRequest"
    .parameter "request"

    .prologue
    const/4 v5, 0x1

    const-string v7, "no-cache"

    const-string v6, "DrmDldClient"

    const-string v4, "Accept"

    .line 417
    iget v2, p2, Landroid/lge/lgdrm/DrmDldRequest;->httpMethod:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_70

    .line 420
    iget v2, p2, Landroid/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v2, v5, :cond_18

    .line 422
    const-string v2, "Accept"

    const-string v2, "application/vnd.oma.drm.roap-trigger+xml, application/vnd.oma.drm.roap-pdu+xml, multipart/related"

    invoke-virtual {p1, v4, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_18
    :goto_18
    const-string v2, "Connection"

    const-string v3, "Keep Alive, Keep-Alive"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v2, "Cache-Control"

    const-string v3, "no-cache"

    invoke-virtual {p1, v2, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v2, "Pragma"

    const-string v3, "no-cache"

    invoke-virtual {p1, v2, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v2, "x-wap-profile"

    iget-object v3, p0, Landroid/lge/lgdrm/DrmDldClient;->uaProfile:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-boolean v2, p0, Landroid/lge/lgdrm/DrmDldClient;->cookieEndable:Z

    if-eqz v2, :cond_63

    .line 468
    const-string v2, "DrmDldClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHttpHeader() : url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v2, "Cookie"

    iget-object v3, p0, Landroid/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p2, Landroid/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/BrowserCookies;->getCookie(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_63
    iget v2, p2, Landroid/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v2, v5, :cond_6e

    .line 474
    const-string v2, "DRM-Version"

    const-string v3, "2.1"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_6e
    const/4 v2, 0x0

    :goto_6f
    return v2

    .line 429
    :cond_70
    iget v2, p2, Landroid/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v2, v5, :cond_7b

    .line 431
    const-string v2, "Accept"

    const-string v2, "application/vnd.oma.drm.roap-trigger+xml, multipart/related"

    invoke-virtual {p1, v4, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_7b
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p2, Landroid/lge/lgdrm/DrmDldRequest;->data:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v3, p2, Landroid/lge/lgdrm/DrmDldRequest;->data:[B

    array-length v3, v3

    int-to-long v3, v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 438
    .local v1, postEntity:Lorg/apache/http/entity/InputStreamEntity;
    if-nez v1, :cond_9c

    .line 440
    const-string v2, "DrmDldClient"

    const-string v2, "setHttpHeader() : Fail to create postEntity"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 443
    const/4 v2, -0x1

    goto :goto_6f

    .line 447
    :cond_9c
    iget v2, p2, Landroid/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v2, v5, :cond_a5

    .line 449
    const-string v2, "application/vnd.oma.drm.roap-pdu+xml"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 453
    :cond_a5
    move-object v0, p1

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v2, v0

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_18
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const-string v5, "DrmDldClient"

    .line 93
    const/4 v1, 0x0

    .line 96
    .local v1, error:Z
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 102
    iput-object v4, p0, Landroid/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    .line 103
    iput-object v4, p0, Landroid/lge/lgdrm/DrmDldClient;->uaProfile:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 108
    const-string v2, "DrmDldClient"

    const-string v2, "run() : Fail to get UAString"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 152
    :goto_1e
    return-void

    .line 112
    :cond_1f
    iget-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->uaProfile:Ljava/lang/String;

    if-nez v2, :cond_30

    .line 114
    const-string v2, "DrmDldClient"

    const-string v2, "run() : Fail to get UAProfile"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_1e

    .line 121
    :cond_30
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/lge/lgdrm/DrmDldClient;->cookieEndable:Z

    .line 124
    iget-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    iput-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    .line 125
    iget-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    if-nez v2, :cond_4c

    .line 127
    const-string v2, "DrmDldClient"

    const-string v2, "run() : Fail to create http client"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_1e

    .line 133
    :cond_4c
    iget-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    if-eqz v2, :cond_5c

    .line 135
    iget-object v0, p0, Landroid/lge/lgdrm/DrmDldClient;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    .line 136
    .local v0, currentRequest:Landroid/lge/lgdrm/DrmDldRequest;
    iput-object v4, p0, Landroid/lge/lgdrm/DrmDldClient;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    .line 138
    const/4 v2, -0x1

    invoke-direct {p0, v0}, Landroid/lge/lgdrm/DrmDldClient;->httpTransaction(Landroid/lge/lgdrm/DrmDldRequest;)I

    move-result v3

    if-ne v2, v3, :cond_4c

    .line 140
    const/4 v1, 0x1

    .line 145
    .end local v0           #currentRequest:Landroid/lge/lgdrm/DrmDldRequest;
    :cond_5c
    if-nez v1, :cond_68

    iget-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    if-eqz v2, :cond_68

    .line 147
    iget-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->objSession:Landroid/lge/lgdrm/DrmObjectSession;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 151
    :cond_68
    iget-object v2, p0, Landroid/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1e
.end method
