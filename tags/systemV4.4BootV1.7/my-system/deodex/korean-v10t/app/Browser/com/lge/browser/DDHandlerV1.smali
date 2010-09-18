.class public Lcom/lge/browser/DDHandlerV1;
.super Landroid/os/AsyncTask;
.source "DDHandlerV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x1000

.field public static final DDHANDLERV1_JOBTYPE_INSTALLNOTIFICATION:I = 0x2

.field public static final DDHANDLERV1_JOBTYPE_OBJECTREQUEST:I = 0x1

.field public static final DD_TEMPORARY_FILEPATH:Ljava/lang/String; = "/data/data/com.android.browser/temp.dd"

.field public static final DLS_STATUS_DRM_INSTALL_NOTIFY_ATTRIBUTE_MISMATCH:Ljava/lang/String; = "905 Attribute mismatch"

.field public static final DLS_STATUS_DRM_INSTALL_NOTIFY_DEVICE_ABORTED:Ljava/lang/String; = "952 Device Aborted"

.field public static final DLS_STATUS_DRM_INSTALL_NOTIFY_INSUFFICIENT_MEMORY:Ljava/lang/String; = "901 Insufficient memory"

.field public static final DLS_STATUS_DRM_INSTALL_NOTIFY_INVALID_DD_VERSION:Ljava/lang/String; = "951 Invalid DDVersion"

.field public static final DLS_STATUS_DRM_INSTALL_NOTIFY_INVALID_DESCRIPTOR:Ljava/lang/String; = "906 Invalid descriptor"

.field public static final DLS_STATUS_DRM_INSTALL_NOTIFY_LOADER_ERROR:Ljava/lang/String; = "954 Loader Error"

.field public static final DLS_STATUS_DRM_INSTALL_NOTIFY_LOSS_OF_SERVICE:Ljava/lang/String; = "903 Loss of Service"

.field public static final DLS_STATUS_DRM_INSTALL_NOTIFY_NON_ACCEPTABLE_CONTENT:Ljava/lang/String; = "953 Non-Acceptable Content"

.field public static final DLS_STATUS_DRM_INSTALL_NOTIFY_SUCCESS:Ljava/lang/String; = "900 Success"

.field public static final DLS_STATUS_DRM_INSTALL_NOTIFY_USER_CANCELED:Ljava/lang/String; = "902 User Cancelled"

.field public static final DOWNLOAD_DESCRIPTOR_MIMETYPE:Ljava/lang/String; = "application/vnd.oma.dd+xml"

.field public static final DOWNLOAD_OMA_DRM_DCF:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final DOWNLOAD_OMA_DRM_DM:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field private static final LOG_TAG:Ljava/lang/String; = "Download (DD1)"

.field private static final RESULT_FAIL:Ljava/lang/String; = "false"

.field private static final RESULT_SUCCESS:Ljava/lang/String; = "true"


# instance fields
.field mActivity:Lcom/android/browser/BrowserActivity;

.field mJobType:I

.field mValues:Landroid/content/ContentValues;

.field private strError:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;I)V
    .registers 4
    .parameter "activity"
    .parameter "jobType"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/browser/DDHandlerV1;->strError:Ljava/lang/String;

    .line 85
    iput p2, p0, Lcom/lge/browser/DDHandlerV1;->mJobType:I

    .line 86
    return-void
.end method

.method private doInBackgroundInstallNotification()Ljava/lang/String;
    .registers 24

    .prologue
    .line 348
    const-string v17, "true"

    .line 351
    .local v17, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "installNotifyURI"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 352
    .local v20, uri:Ljava/lang/String;
    if-eqz v20, :cond_16

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_33

    .line 353
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object/from16 v21, v0

    const v22, 0x7f070117

    invoke-virtual/range {v21 .. v22}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/DDHandlerV1;->strError:Ljava/lang/String;

    .line 354
    const-string v21, "Download (DD1)"

    const-string v22, "Emtpy Install Notification URL specified"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v17

    .line 434
    :goto_32
    return-object v21

    .line 360
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "useragent"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v7

    .line 362
    .local v7, client:Landroid/net/http/AndroidHttpClient;
    new-instance v15, Lorg/apache/http/client/methods/HttpPost;

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 364
    .local v15, request:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "cookiedata"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 365
    .local v8, cookie:Ljava/lang/String;
    if-eqz v8, :cond_68

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_68

    .line 366
    const-string v21, "Cookie"

    move-object v0, v15

    move-object/from16 v1, v21

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "referer"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 370
    .local v14, referer:Ljava/lang/String;
    if-eqz v14, :cond_85

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_85

    .line 371
    const-string v21, "Referer"

    move-object v0, v15

    move-object/from16 v1, v21

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "notify_code"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 376
    .local v13, notifyCode:Ljava/lang/String;
    :try_start_91
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v4, v13}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 377
    .local v4, body:Lorg/apache/http/entity/StringEntity;
    const-string v21, "text/plain"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v15, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_a1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_91 .. :try_end_a1} :catch_e4

    .line 384
    const/16 v18, 0x0

    .line 387
    .local v18, stream:Ljava/io/FileOutputStream;
    const/16 v21, 0x1000

    :try_start_a5
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object v9, v0

    .line 388
    .local v9, data:[B
    const/4 v6, 0x0

    .line 390
    .local v6, bytesSoFar:I
    invoke-virtual {v7, v15}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 397
    .local v16, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    const/16 v22, 0xc8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d8

    .line 399
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_c6
    .catchall {:try_start_a5 .. :try_end_c6} :catchall_147
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a5 .. :try_end_c6} :catch_107
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_c6} :catch_127

    move-result-object v11

    .local v11, entityStream:Ljava/io/InputStream;
    move-object/from16 v19, v18

    .line 402
    .end local v18           #stream:Ljava/io/FileOutputStream;
    .local v19, stream:Ljava/io/FileOutputStream;
    :goto_c9
    :try_start_c9
    invoke-virtual {v11, v9}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 403
    .local v5, bytesRead:I
    const/16 v21, -0x1

    move v0, v5

    move/from16 v1, v21

    if-ne v0, v1, :cond_eb

    .line 404
    const-string v17, "true"
    :try_end_d6
    .catchall {:try_start_c9 .. :try_end_d6} :catchall_155
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c9 .. :try_end_d6} :catch_15f
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d6} :catch_159

    move-object/from16 v18, v19

    .line 424
    .end local v5           #bytesRead:I
    .end local v11           #entityStream:Ljava/io/InputStream;
    .end local v19           #stream:Ljava/io/FileOutputStream;
    .restart local v18       #stream:Ljava/io/FileOutputStream;
    :cond_d8
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 427
    if-eqz v18, :cond_e0

    .line 428
    :try_start_dd
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_151

    .end local v6           #bytesSoFar:I
    .end local v9           #data:[B
    .end local v16           #response:Lorg/apache/http/HttpResponse;
    :cond_e0
    :goto_e0
    move-object/from16 v21, v17

    .line 434
    goto/16 :goto_32

    .line 379
    .end local v4           #body:Lorg/apache/http/entity/StringEntity;
    .end local v18           #stream:Ljava/io/FileOutputStream;
    :catch_e4
    move-exception v21

    move-object/from16 v10, v21

    .line 380
    .local v10, e:Ljava/io/UnsupportedEncodingException;
    const-string v21, "true"

    goto/16 :goto_32

    .line 408
    .end local v10           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #body:Lorg/apache/http/entity/StringEntity;
    .restart local v5       #bytesRead:I
    .restart local v6       #bytesSoFar:I
    .restart local v9       #data:[B
    .restart local v11       #entityStream:Ljava/io/InputStream;
    .restart local v16       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #stream:Ljava/io/FileOutputStream;
    :cond_eb
    if-nez v19, :cond_165

    .line 409
    :try_start_ed
    new-instance v18, Ljava/io/FileOutputStream;

    const-string v21, "/data/data/com.android.browser/temp.dd"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_ed .. :try_end_f8} :catchall_155
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ed .. :try_end_f8} :catch_15f
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f8} :catch_159

    .line 411
    .end local v19           #stream:Ljava/io/FileOutputStream;
    .restart local v18       #stream:Ljava/io/FileOutputStream;
    :goto_f8
    const/16 v21, 0x0

    :try_start_fa
    move-object/from16 v0, v18

    move-object v1, v9

    move/from16 v2, v21

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_103
    .catchall {:try_start_fa .. :try_end_103} :catchall_147
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fa .. :try_end_103} :catch_107
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_103} :catch_127

    .line 412
    add-int/2addr v6, v5

    move-object/from16 v19, v18

    .line 413
    .end local v18           #stream:Ljava/io/FileOutputStream;
    .restart local v19       #stream:Ljava/io/FileOutputStream;
    goto :goto_c9

    .line 417
    .end local v5           #bytesRead:I
    .end local v6           #bytesSoFar:I
    .end local v9           #data:[B
    .end local v11           #entityStream:Ljava/io/InputStream;
    .end local v16           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #stream:Ljava/io/FileOutputStream;
    .restart local v18       #stream:Ljava/io/FileOutputStream;
    :catch_107
    move-exception v21

    move-object/from16 v12, v21

    .line 418
    .local v12, ex:Ljava/lang/IllegalArgumentException;
    :goto_10a
    :try_start_10a
    new-instance v21, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/DDHandlerV1;->strError:Ljava/lang/String;

    .line 419
    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_11c
    .catchall {:try_start_10a .. :try_end_11c} :catchall_147

    .line 424
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 427
    if-eqz v18, :cond_e0

    .line 428
    :try_start_121
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_125

    goto :goto_e0

    .line 430
    :catch_125
    move-exception v21

    goto :goto_e0

    .line 420
    .end local v12           #ex:Ljava/lang/IllegalArgumentException;
    :catch_127
    move-exception v21

    move-object/from16 v12, v21

    .line 421
    .local v12, ex:Ljava/io/IOException;
    :goto_12a
    :try_start_12a
    new-instance v21, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/DDHandlerV1;->strError:Ljava/lang/String;

    .line 422
    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_13c
    .catchall {:try_start_12a .. :try_end_13c} :catchall_147

    .line 424
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 427
    if-eqz v18, :cond_e0

    .line 428
    :try_start_141
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_144} :catch_145

    goto :goto_e0

    .line 430
    :catch_145
    move-exception v21

    goto :goto_e0

    .line 424
    .end local v12           #ex:Ljava/io/IOException;
    :catchall_147
    move-exception v21

    :goto_148
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 427
    if-eqz v18, :cond_150

    .line 428
    :try_start_14d
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_150} :catch_153

    .line 431
    :cond_150
    :goto_150
    throw v21

    .line 430
    .restart local v6       #bytesSoFar:I
    .restart local v9       #data:[B
    .restart local v16       #response:Lorg/apache/http/HttpResponse;
    :catch_151
    move-exception v21

    goto :goto_e0

    .end local v6           #bytesSoFar:I
    .end local v9           #data:[B
    .end local v16           #response:Lorg/apache/http/HttpResponse;
    :catch_153
    move-exception v22

    goto :goto_150

    .line 424
    .end local v18           #stream:Ljava/io/FileOutputStream;
    .restart local v6       #bytesSoFar:I
    .restart local v9       #data:[B
    .restart local v11       #entityStream:Ljava/io/InputStream;
    .restart local v16       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #stream:Ljava/io/FileOutputStream;
    :catchall_155
    move-exception v21

    move-object/from16 v18, v19

    .end local v19           #stream:Ljava/io/FileOutputStream;
    .restart local v18       #stream:Ljava/io/FileOutputStream;
    goto :goto_148

    .line 420
    .end local v18           #stream:Ljava/io/FileOutputStream;
    .restart local v19       #stream:Ljava/io/FileOutputStream;
    :catch_159
    move-exception v21

    move-object/from16 v12, v21

    move-object/from16 v18, v19

    .end local v19           #stream:Ljava/io/FileOutputStream;
    .restart local v18       #stream:Ljava/io/FileOutputStream;
    goto :goto_12a

    .line 417
    .end local v18           #stream:Ljava/io/FileOutputStream;
    .restart local v19       #stream:Ljava/io/FileOutputStream;
    :catch_15f
    move-exception v21

    move-object/from16 v12, v21

    move-object/from16 v18, v19

    .end local v19           #stream:Ljava/io/FileOutputStream;
    .restart local v18       #stream:Ljava/io/FileOutputStream;
    goto :goto_10a

    .end local v18           #stream:Ljava/io/FileOutputStream;
    .restart local v5       #bytesRead:I
    .restart local v19       #stream:Ljava/io/FileOutputStream;
    :cond_165
    move-object/from16 v18, v19

    .end local v19           #stream:Ljava/io/FileOutputStream;
    .restart local v18       #stream:Ljava/io/FileOutputStream;
    goto :goto_f8
.end method

.method private doInBackgroundObjectRequest()Ljava/lang/String;
    .registers 27

    .prologue
    .line 89
    const-string v18, "false"

    .line 92
    .local v18, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const-string v25, "uri"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 93
    .local v23, uri:Ljava/lang/String;
    if-eqz v23, :cond_16

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_33

    .line 94
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object/from16 v24, v0

    const v25, 0x7f070117

    invoke-virtual/range {v24 .. v25}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/DDHandlerV1;->strError:Ljava/lang/String;

    .line 95
    const-string v24, "Download (DD1)"

    const-string v25, "Emtpy URL specified"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v18

    .line 209
    .end local v18           #result:Ljava/lang/String;
    .local v19, result:Ljava/lang/String;
    :goto_32
    return-object v19

    .line 101
    .end local v19           #result:Ljava/lang/String;
    .restart local v18       #result:Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const-string v25, "useragent"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v6

    .line 103
    .local v6, client:Landroid/net/http/AndroidHttpClient;
    new-instance v16, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 105
    .local v16, request:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const-string v25, "cookiedata"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, cookie:Ljava/lang/String;
    if-eqz v7, :cond_6a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_6a

    .line 107
    const-string v24, "Cookie"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const-string v25, "referer"

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 111
    .local v15, referer:Ljava/lang/String;
    if-eqz v15, :cond_88

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_88

    .line 112
    const-string v24, "Referer"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_88
    const/4 v14, 0x0

    .line 117
    .local v14, mimeType:Ljava/lang/String;
    const/16 v21, 0x0

    .line 120
    .local v21, stream:Ljava/io/FileOutputStream;
    const/16 v24, 0x1000

    :try_start_8d
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v8, v0

    .line 121
    .local v8, data:[B
    const/4 v5, 0x0

    .line 123
    .local v5, bytesSoFar:I
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 130
    .local v17, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_14a

    .line 131
    const/4 v13, 0x0

    .line 132
    .local v13, headerTransferEncoding:Ljava/lang/String;
    const/4 v12, 0x0

    .line 135
    .local v12, headerContentLength:Ljava/lang/String;
    const-string v24, "Content-Type"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    .line 136
    .local v11, header:Lorg/apache/http/Header;
    if-eqz v11, :cond_10f

    .line 137
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 138
    const/16 v24, 0x3b

    move-object v0, v14

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    .line 139
    .local v20, semicolonIndex:I
    const/16 v24, -0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_d8

    .line 140
    const/16 v24, 0x0

    move-object v0, v14

    move/from16 v1, v24

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 143
    :cond_d8
    const-string v24, "application/vnd.oma.dd+xml"

    move-object v0, v14

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_10f

    .line 144
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 145
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object/from16 v24, v0

    const v25, 0x7f070118

    invoke-virtual/range {v24 .. v25}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/DDHandlerV1;->strError:Ljava/lang/String;

    .line 147
    const-string v24, "Download (DD1)"

    const-string v25, "This content is not download descriptor."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catchall {:try_start_8d .. :try_end_103} :catchall_1b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8d .. :try_end_103} :catch_172
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_103} :catch_192

    .line 199
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 202
    if-eqz v21, :cond_10b

    .line 203
    :try_start_108
    #Replaced unresolvable odex instruction with a throw
    throw v21
    #invoke-virtual-quick/range {v21 .. v21}, vtable@0xb
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10b} :catch_1bc

    :cond_10b
    :goto_10b
    move-object/from16 v19, v18

    .line 206
    .end local v18           #result:Ljava/lang/String;
    .restart local v19       #result:Ljava/lang/String;
    goto/16 :goto_32

    .line 153
    .end local v19           #result:Ljava/lang/String;
    .end local v20           #semicolonIndex:I
    .restart local v18       #result:Ljava/lang/String;
    :cond_10f
    :try_start_10f
    const-string v24, "Transfer-Encoding"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    .line 154
    if-eqz v11, :cond_11f

    .line 155
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 157
    :cond_11f
    if-nez v13, :cond_131

    .line 158
    const-string v24, "Content-Length"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    .line 159
    if-eqz v11, :cond_131

    .line 160
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 176
    :cond_131
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_138
    .catchall {:try_start_10f .. :try_end_138} :catchall_1b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10f .. :try_end_138} :catch_172
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_138} :catch_192

    move-result-object v9

    .local v9, entityStream:Ljava/io/InputStream;
    move-object/from16 v22, v21

    .line 179
    .end local v21           #stream:Ljava/io/FileOutputStream;
    .local v22, stream:Ljava/io/FileOutputStream;
    :goto_13b
    :try_start_13b
    invoke-virtual {v9, v8}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 180
    .local v4, bytesRead:I
    const/16 v24, -0x1

    move v0, v4

    move/from16 v1, v24

    if-ne v0, v1, :cond_156

    .line 181
    const-string v18, "true"
    :try_end_148
    .catchall {:try_start_13b .. :try_end_148} :catchall_1c3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13b .. :try_end_148} :catch_1cd
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_148} :catch_1c7

    move-object/from16 v21, v22

    .line 199
    .end local v4           #bytesRead:I
    .end local v9           #entityStream:Ljava/io/InputStream;
    .end local v11           #header:Lorg/apache/http/Header;
    .end local v12           #headerContentLength:Ljava/lang/String;
    .end local v13           #headerTransferEncoding:Ljava/lang/String;
    .end local v22           #stream:Ljava/io/FileOutputStream;
    .restart local v21       #stream:Ljava/io/FileOutputStream;
    :cond_14a
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 202
    if-eqz v21, :cond_152

    .line 203
    :try_start_14f
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_1bf

    .end local v5           #bytesSoFar:I
    .end local v8           #data:[B
    .end local v17           #response:Lorg/apache/http/HttpResponse;
    :cond_152
    :goto_152
    move-object/from16 v19, v18

    .line 209
    .end local v18           #result:Ljava/lang/String;
    .restart local v19       #result:Ljava/lang/String;
    goto/16 :goto_32

    .line 185
    .end local v19           #result:Ljava/lang/String;
    .end local v21           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #bytesRead:I
    .restart local v5       #bytesSoFar:I
    .restart local v8       #data:[B
    .restart local v9       #entityStream:Ljava/io/InputStream;
    .restart local v11       #header:Lorg/apache/http/Header;
    .restart local v12       #headerContentLength:Ljava/lang/String;
    .restart local v13       #headerTransferEncoding:Ljava/lang/String;
    .restart local v17       #response:Lorg/apache/http/HttpResponse;
    .restart local v18       #result:Ljava/lang/String;
    .restart local v22       #stream:Ljava/io/FileOutputStream;
    :cond_156
    if-nez v22, :cond_1d3

    .line 186
    :try_start_158
    new-instance v21, Ljava/io/FileOutputStream;

    const-string v24, "/data/data/com.android.browser/temp.dd"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_163
    .catchall {:try_start_158 .. :try_end_163} :catchall_1c3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_158 .. :try_end_163} :catch_1cd
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_163} :catch_1c7

    .line 188
    .end local v22           #stream:Ljava/io/FileOutputStream;
    .restart local v21       #stream:Ljava/io/FileOutputStream;
    :goto_163
    const/16 v24, 0x0

    :try_start_165
    move-object/from16 v0, v21

    move-object v1, v8

    move/from16 v2, v24

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_16e
    .catchall {:try_start_165 .. :try_end_16e} :catchall_1b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_165 .. :try_end_16e} :catch_172
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_16e} :catch_192

    .line 189
    add-int/2addr v5, v4

    move-object/from16 v22, v21

    .line 190
    .end local v21           #stream:Ljava/io/FileOutputStream;
    .restart local v22       #stream:Ljava/io/FileOutputStream;
    goto :goto_13b

    .line 192
    .end local v4           #bytesRead:I
    .end local v5           #bytesSoFar:I
    .end local v8           #data:[B
    .end local v9           #entityStream:Ljava/io/InputStream;
    .end local v11           #header:Lorg/apache/http/Header;
    .end local v12           #headerContentLength:Ljava/lang/String;
    .end local v13           #headerTransferEncoding:Ljava/lang/String;
    .end local v17           #response:Lorg/apache/http/HttpResponse;
    .end local v22           #stream:Ljava/io/FileOutputStream;
    .restart local v21       #stream:Ljava/io/FileOutputStream;
    :catch_172
    move-exception v24

    move-object/from16 v10, v24

    .line 193
    .local v10, ex:Ljava/lang/IllegalArgumentException;
    :goto_175
    :try_start_175
    new-instance v24, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/DDHandlerV1;->strError:Ljava/lang/String;

    .line 194
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_187
    .catchall {:try_start_175 .. :try_end_187} :catchall_1b2

    .line 199
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 202
    if-eqz v21, :cond_152

    .line 203
    :try_start_18c
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_18f} :catch_190

    goto :goto_152

    .line 205
    :catch_190
    move-exception v24

    goto :goto_152

    .line 195
    .end local v10           #ex:Ljava/lang/IllegalArgumentException;
    :catch_192
    move-exception v24

    move-object/from16 v10, v24

    .line 196
    .local v10, ex:Ljava/io/IOException;
    :goto_195
    :try_start_195
    new-instance v24, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/browser/DDHandlerV1;->strError:Ljava/lang/String;

    .line 197
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1a7
    .catchall {:try_start_195 .. :try_end_1a7} :catchall_1b2

    .line 199
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 202
    if-eqz v21, :cond_152

    .line 203
    :try_start_1ac
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1af} :catch_1b0

    goto :goto_152

    .line 205
    :catch_1b0
    move-exception v24

    goto :goto_152

    .line 199
    .end local v10           #ex:Ljava/io/IOException;
    :catchall_1b2
    move-exception v24

    :goto_1b3
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 202
    if-eqz v21, :cond_1bb

    .line 203
    :try_start_1b8
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1bb} :catch_1c1

    .line 206
    :cond_1bb
    :goto_1bb
    throw v24

    .line 205
    .restart local v5       #bytesSoFar:I
    .restart local v8       #data:[B
    .restart local v11       #header:Lorg/apache/http/Header;
    .restart local v12       #headerContentLength:Ljava/lang/String;
    .restart local v13       #headerTransferEncoding:Ljava/lang/String;
    .restart local v17       #response:Lorg/apache/http/HttpResponse;
    .restart local v20       #semicolonIndex:I
    :catch_1bc
    move-exception v24

    goto/16 :goto_10b

    .end local v11           #header:Lorg/apache/http/Header;
    .end local v12           #headerContentLength:Ljava/lang/String;
    .end local v13           #headerTransferEncoding:Ljava/lang/String;
    .end local v20           #semicolonIndex:I
    :catch_1bf
    move-exception v24

    goto :goto_152

    .end local v5           #bytesSoFar:I
    .end local v8           #data:[B
    .end local v17           #response:Lorg/apache/http/HttpResponse;
    :catch_1c1
    move-exception v25

    goto :goto_1bb

    .line 199
    .end local v21           #stream:Ljava/io/FileOutputStream;
    .restart local v5       #bytesSoFar:I
    .restart local v8       #data:[B
    .restart local v9       #entityStream:Ljava/io/InputStream;
    .restart local v11       #header:Lorg/apache/http/Header;
    .restart local v12       #headerContentLength:Ljava/lang/String;
    .restart local v13       #headerTransferEncoding:Ljava/lang/String;
    .restart local v17       #response:Lorg/apache/http/HttpResponse;
    .restart local v22       #stream:Ljava/io/FileOutputStream;
    :catchall_1c3
    move-exception v24

    move-object/from16 v21, v22

    .end local v22           #stream:Ljava/io/FileOutputStream;
    .restart local v21       #stream:Ljava/io/FileOutputStream;
    goto :goto_1b3

    .line 195
    .end local v21           #stream:Ljava/io/FileOutputStream;
    .restart local v22       #stream:Ljava/io/FileOutputStream;
    :catch_1c7
    move-exception v24

    move-object/from16 v10, v24

    move-object/from16 v21, v22

    .end local v22           #stream:Ljava/io/FileOutputStream;
    .restart local v21       #stream:Ljava/io/FileOutputStream;
    goto :goto_195

    .line 192
    .end local v21           #stream:Ljava/io/FileOutputStream;
    .restart local v22       #stream:Ljava/io/FileOutputStream;
    :catch_1cd
    move-exception v24

    move-object/from16 v10, v24

    move-object/from16 v21, v22

    .end local v22           #stream:Ljava/io/FileOutputStream;
    .restart local v21       #stream:Ljava/io/FileOutputStream;
    goto :goto_175

    .end local v21           #stream:Ljava/io/FileOutputStream;
    .restart local v4       #bytesRead:I
    .restart local v22       #stream:Ljava/io/FileOutputStream;
    :cond_1d3
    move-object/from16 v21, v22

    .end local v22           #stream:Ljava/io/FileOutputStream;
    .restart local v21       #stream:Ljava/io/FileOutputStream;
    goto :goto_163
.end method

.method public static isDrmMimeType(Ljava/lang/String;)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 470
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "application/vnd.oma.drm.content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "application/vnd.oma.drm.dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 473
    :cond_18
    const/4 v0, 0x1

    .line 475
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isDrmRightMimeType(Ljava/lang/String;)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 480
    const-string v0, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 482
    :cond_10
    const/4 v0, 0x1

    .line 484
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private onPostExecuteInstallNotification(Ljava/lang/String;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 438
    iget-object v1, p0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    const-string v2, "nextURI"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, uri:Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 440
    iget-object v1, p0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserActivity;->loadURL(Ljava/lang/String;)V

    .line 441
    :cond_f
    return-void
.end method

.method private onPostExecuteObjectRequest(Ljava/lang/String;)V
    .registers 23
    .parameter "result"

    .prologue
    .line 213
    const-string v3, "false"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->strError:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_1f

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->strError:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserActivity;->popupForDDHandlerV1(Ljava/lang/String;)V

    .line 345
    .end local p1
    :cond_1f
    :goto_1f
    return-void

    .line 220
    .restart local p1
    :cond_20
    const/4 v11, 0x0

    .line 223
    .local v11, bRoapTriggerInDD:Z
    :try_start_21
    new-instance v13, Lcom/lge/browser/DDParser;

    invoke-direct {v13}, Lcom/lge/browser/DDParser;-><init>()V

    .line 226
    .local v13, ddParser:Lcom/lge/browser/DDParser;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_100

    move-result-object v19

    .line 229
    .local v19, parser:Ljavax/xml/parsers/SAXParser;
    :try_start_2e
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.browser/temp.dd"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/HandlerBase;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3c} :catch_cc

    .line 237
    :try_start_3c
    const-string v3, "Download (DD1)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ObjectURI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v3, v13, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    if-eqz v3, :cond_74

    .line 239
    const-string v3, "Download (DD1)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InstallNotifyURI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_74
    iget-object v3, v13, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    if-eqz v3, :cond_92

    .line 241
    const-string v3, "Download (DD1)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NextURI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_92
    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    if-eqz v3, :cond_134

    .line 243
    const/16 v17, 0x0

    .end local p1
    .local v17, i:I
    :goto_98
    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_134

    .line 244
    const-string v3, "Download (DD1)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mimetype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    add-int/lit8 v17, v17, 0x1

    goto :goto_98

    .line 230
    .end local v17           #i:I
    .restart local p1
    :catch_cc
    move-exception v3

    move-object v15, v3

    .line 232
    .local v15, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v4, v0

    const v5, 0x7f070116

    invoke-virtual {v4, v5}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserActivity;->popupForDDHandlerV1(Ljava/lang/String;)V

    .line 233
    const-string v3, "Download (DD1)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing Error1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_fe} :catch_100

    goto/16 :goto_1f

    .line 339
    .end local v13           #ddParser:Lcom/lge/browser/DDParser;
    .end local v15           #e:Ljava/lang/Exception;
    .end local v19           #parser:Ljavax/xml/parsers/SAXParser;
    .end local p1
    :catch_100
    move-exception v3

    move-object v15, v3

    .line 341
    .restart local v15       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v4, v0

    const v5, 0x7f070116

    invoke-virtual {v4, v5}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserActivity;->popupForDDHandlerV1(Ljava/lang/String;)V

    .line 342
    const-string v3, "Download (DD1)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing Error2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 248
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v13       #ddParser:Lcom/lge/browser/DDParser;
    .restart local v19       #parser:Ljavax/xml/parsers/SAXParser;
    :cond_134
    :try_start_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "uri"

    iget-object v5, v13, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v4, v13, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 250
    .local v12, cookie:Ljava/lang/String;
    if-eqz v12, :cond_156

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "cookiedata"

    invoke-virtual {v3, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "destination"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const/4 v14, 0x0

    .line 255
    .local v14, drmIndex:I
    const/16 v18, 0x0

    .line 256
    .local v18, nRoapTypeCount:I
    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    if-eqz v3, :cond_19a

    .line 257
    const/16 v20, 0x0

    .line 258
    .local v20, type:Ljava/lang/String;
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_170
    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_18e

    .line 259
    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #type:Ljava/lang/String;
    check-cast v20, Ljava/lang/String;

    .line 260
    .restart local v20       #type:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/lge/browser/DDHandlerV1;->isDrmMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_243

    .line 261
    move/from16 v14, v17

    .line 268
    :cond_18e
    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v18

    move v1, v3

    if-ne v0, v1, :cond_19a

    .line 269
    const/4 v11, 0x1

    .line 271
    .end local v17           #i:I
    .end local v20           #type:Ljava/lang/String;
    :cond_19a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "mimetype"

    iget-object v5, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v5, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "hint"

    iget-object v5, v13, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "description"

    iget-object v5, v13, Lcom/lge/browser/DDParser;->objectURL:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget v3, v13, Lcom/lge/browser/DDParser;->size:I

    if-lez v3, :cond_1e4

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "total_bytes"

    iget v5, v13, Lcom/lge/browser/DDParser;->size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    :cond_1e4
    sget-object v3, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v3

    if-nez v3, :cond_261

    .line 279
    if-eqz v11, :cond_24f

    .line 280
    new-instance v16, Lcom/lge/browser/OmaDrmHandlerV2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v3, v0

    const/16 v4, 0x65

    move-object/from16 v0, v16

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/lge/browser/OmaDrmHandlerV2;-><init>(Lcom/android/browser/BrowserActivity;I)V

    .line 281
    .local v16, handler:Lcom/lge/browser/OmaDrmHandlerV2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->addToOmaDrmHandlerV2List(Lcom/lge/browser/OmaDrmHandlerV2;)V

    .line 282
    iget-object v3, v13, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    if-eqz v3, :cond_219

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "installNotifyURI"

    iget-object v5, v13, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_219
    iget-object v3, v13, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    if-eqz v3, :cond_229

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "nextURI"

    iget-object v5, v13, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_229
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/ContentValues;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    aput-object v5, v3, v4

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 291
    .end local v16           #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    :goto_23a
    const-string v3, "Download (DD1)"

    const-string v4, "CFG_DOWNLOAD_DISPLAY_DD == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 264
    .restart local v17       #i:I
    .restart local v20       #type:Ljava/lang/String;
    :cond_243
    invoke-static/range {v20 .. v20}, Lcom/lge/browser/OmaDrmHandlerV2;->isRoapMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24b

    .line 265
    add-int/lit8 v18, v18, 0x1

    .line 258
    :cond_24b
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_170

    .line 289
    .end local v17           #i:I
    .end local v20           #type:Ljava/lang/String;
    :cond_24f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v4, v0

    iget-object v5, v13, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    iget-object v6, v13, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/browser/BrowserActivity;->viewDownloads(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23a

    .line 295
    :cond_261
    sget-object v3, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c2

    const/4 v3, 0x1

    if-ne v11, v3, :cond_2c2

    .line 297
    new-instance v16, Lcom/lge/browser/OmaDrmHandlerV2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v3, v0

    const/16 v4, 0x65

    move-object/from16 v0, v16

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/lge/browser/OmaDrmHandlerV2;-><init>(Lcom/android/browser/BrowserActivity;I)V

    .line 298
    .restart local v16       #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->addToOmaDrmHandlerV2List(Lcom/lge/browser/OmaDrmHandlerV2;)V

    .line 299
    iget-object v3, v13, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    if-eqz v3, :cond_298

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "installNotifyURI"

    iget-object v5, v13, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_298
    iget-object v3, v13, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    if-eqz v3, :cond_2a8

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "nextURI"

    iget-object v5, v13, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_2a8
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/ContentValues;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    aput-object v5, v3, v4

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/browser/OmaDrmHandlerV2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 304
    const-string v3, "Download (DD1)"

    const-string v4, "CFG_DOWNLOAD_DO_NOT_DISPLAY_ROAP_TRIGGER_DD == 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 308
    .end local v16           #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    :cond_2c2
    const/4 v9, 0x0

    .line 309
    .local v9, ddMimetypes:Ljava/lang/String;
    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    if-eqz v3, :cond_326

    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_326

    .line 310
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_2d1
    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_30a

    .line 311
    sget-object v3, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35d

    .line 312
    new-instance v9, Ljava/lang/String;

    .end local v9           #ddMimetypes:Ljava/lang/String;
    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 313
    .restart local v9       #ddMimetypes:Ljava/lang/String;
    invoke-static {v9}, Lcom/lge/browser/DDHandlerV1;->isDrmMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_358

    invoke-static {v9}, Lcom/lge/browser/DDHandlerV1;->isDrmRightMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_358

    invoke-static {v9}, Lcom/lge/browser/OmaDrmHandlerV2;->isRoapMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_358

    .line 326
    :cond_30a
    sget-object v3, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_DISPLAY_FIRST_MIME_ONLY:Lcom/lge/browser/OpCfgItem;

    invoke-static {v3}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_326

    .line 327
    if-nez v9, :cond_326

    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_326

    .line 328
    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #ddMimetypes:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 332
    .end local v17           #i:I
    .restart local v9       #ddMimetypes:Ljava/lang/String;
    :cond_326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mActivity:Lcom/android/browser/BrowserActivity;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    move-object v4, v0

    iget-object v5, v13, Lcom/lge/browser/DDParser;->installNotifyURL:Ljava/lang/String;

    iget-object v6, v13, Lcom/lge/browser/DDParser;->nextURL:Ljava/lang/String;

    iget-object v7, v13, Lcom/lge/browser/DDParser;->name:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v13, Lcom/lge/browser/DDParser;->size:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " B"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual/range {v3 .. v10}, Lcom/android/browser/BrowserActivity;->promptOmaV1(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1f

    .line 316
    .restart local v17       #i:I
    :cond_358
    const/4 v9, 0x0

    .line 310
    :goto_359
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2d1

    .line 319
    :cond_35d
    if-nez v17, :cond_373

    .line 320
    new-instance v9, Ljava/lang/String;

    .end local v9           #ddMimetypes:Ljava/lang/String;
    iget-object v3, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v9       #ddMimetypes:Ljava/lang/String;
    goto :goto_359

    .line 322
    :cond_373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/lge/browser/DDParser;->mimeTypes:Ljava/util/Vector;

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_397
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_397} :catch_100

    move-result-object v9

    goto :goto_359
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, [Landroid/content/ContentValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lge/browser/DDHandlerV1;->doInBackground([Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 3
    .parameter "values"

    .prologue
    .line 445
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/lge/browser/DDHandlerV1;->mValues:Landroid/content/ContentValues;

    .line 446
    iget v0, p0, Lcom/lge/browser/DDHandlerV1;->mJobType:I

    packed-switch v0, :pswitch_data_16

    .line 452
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 448
    :pswitch_c
    invoke-direct {p0}, Lcom/lge/browser/DDHandlerV1;->doInBackgroundObjectRequest()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 450
    :pswitch_11
    invoke-direct {p0}, Lcom/lge/browser/DDHandlerV1;->doInBackgroundInstallNotification()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 446
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_c
        :pswitch_11
    .end packed-switch
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lge/browser/DDHandlerV1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 457
    if-nez p1, :cond_3

    .line 466
    :goto_2
    return-void

    .line 458
    :cond_3
    iget v0, p0, Lcom/lge/browser/DDHandlerV1;->mJobType:I

    packed-switch v0, :pswitch_data_12

    goto :goto_2

    .line 460
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/lge/browser/DDHandlerV1;->onPostExecuteObjectRequest(Ljava/lang/String;)V

    goto :goto_2

    .line 463
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/lge/browser/DDHandlerV1;->onPostExecuteInstallNotification(Ljava/lang/String;)V

    goto :goto_2

    .line 458
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method
