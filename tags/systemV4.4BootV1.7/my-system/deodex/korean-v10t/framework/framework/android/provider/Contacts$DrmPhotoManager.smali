.class public final Landroid/provider/Contacts$DrmPhotoManager;
.super Ljava/lang/Object;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmPhotoManager"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 7
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 2385
    if-eqz p1, :cond_1c

    .line 2386
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2387
    .local v2, values:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 2388
    .local v1, empty:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2389
    .local v0, data:[B
    const-string v3, "filename"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2391
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2393
    .end local v0           #data:[B
    .end local v1           #empty:Ljava/lang/String;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1c
    return-void
.end method

.method private static openDrmPhotoDrmStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/lge/lgdrm/DrmStream;
    .registers 6
    .parameter "context"
    .parameter "uri"
    .parameter "drmFilename"

    .prologue
    .line 2297
    if-nez p2, :cond_4

    .line 2298
    const/4 p0, 0x0

    .line 2381
    .end local p0
    .end local p1
    .end local p2
    :goto_3
    return-object p0

    .line 2302
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2305
    .local v0, isSdPresent:Z
    if-nez v0, :cond_19

    .line 2306
    const-string p0, "Contacts"

    .end local p0
    const-string p1, "SD card is removal"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    const/4 p0, 0x0

    goto :goto_3

    .line 2309
    .restart local p0
    .restart local p1
    :cond_19
    const-string v0, "Contacts"

    .end local v0           #isSdPresent:Z
    const-string v1, ">> sd card is inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_20} :catch_cd
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_4 .. :try_end_20} :catch_de

    .line 2313
    :try_start_20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 2314
    .local v0, exists:Z
    if-nez v0, :cond_51

    .line 2315
    const-string p2, "Contacts"

    .end local p2
    const-string v0, "file was not found"

    .end local v0           #exists:Z
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    invoke-static {p0, p1}, Landroid/provider/Contacts$DrmPhotoManager;->deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_35} :catch_37
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_35} :catch_44
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_20 .. :try_end_35} :catch_de

    .line 2317
    const/4 p0, 0x0

    goto :goto_3

    .line 2319
    :catch_37
    move-exception p2

    .line 2320
    .local p2, e:Ljava/lang/NullPointerException;
    :try_start_38
    const-string p2, "Contacts"

    .end local p2           #e:Ljava/lang/NullPointerException;
    const-string v0, "NullPointerException occured"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-static {p0, p1}, Landroid/provider/Contacts$DrmPhotoManager;->deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2322
    const/4 p0, 0x0

    goto :goto_3

    .line 2323
    :catch_44
    move-exception p2

    .line 2324
    .local p2, e:Ljava/lang/SecurityException;
    const-string p2, "Contacts"

    .end local p2           #e:Ljava/lang/SecurityException;
    const-string v0, "SecurityException occured"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    invoke-static {p0, p1}, Landroid/provider/Contacts$DrmPhotoManager;->deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2326
    const/4 p0, 0x0

    goto :goto_3

    .line 2328
    .restart local v0       #exists:Z
    .local p2, drmFilename:Ljava/lang/String;
    :cond_51
    const-string v0, "Contacts"

    .end local v0           #exists:Z
    const-string v1, ">> finish file check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    invoke-static {p2, p0}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v0

    .line 2332
    .local v0, session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v0, :cond_6a

    .line 2333
    const-string p2, "Contacts"

    .end local p2           #drmFilename:Ljava/lang/String;
    const-string v0, "session is null"

    .end local v0           #session:Landroid/lge/lgdrm/DrmContentSession;
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    invoke-static {p0, p1}, Landroid/provider/Contacts$DrmPhotoManager;->deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2335
    const/4 p0, 0x0

    goto :goto_3

    .line 2337
    .restart local v0       #session:Landroid/lge/lgdrm/DrmContentSession;
    .restart local p2       #drmFilename:Ljava/lang/String;
    :cond_6a
    const-string p2, "Contacts"

    .end local p2           #drmFilename:Ljava/lang/String;
    const-string v1, ">> create session success"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object p2

    .line 2340
    .local p2, drmContent:Landroid/lge/lgdrm/DrmContent;
    if-nez p2, :cond_84

    .line 2341
    const-string p2, "Contacts"

    .end local p2           #drmContent:Landroid/lge/lgdrm/DrmContent;
    const-string v0, "drmContent is null"

    .end local v0           #session:Landroid/lge/lgdrm/DrmContentSession;
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    invoke-static {p0, p1}, Landroid/provider/Contacts$DrmPhotoManager;->deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2343
    const/4 p0, 0x0

    goto :goto_3

    .line 2345
    .restart local v0       #session:Landroid/lge/lgdrm/DrmContentSession;
    .restart local p2       #drmContent:Landroid/lge/lgdrm/DrmContent;
    :cond_84
    const-string p2, "Contacts"

    .end local p2           #drmContent:Landroid/lge/lgdrm/DrmContent;
    const-string v1, ">> create drmContent success"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    const/4 p2, 0x2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result p2

    .line 2349
    .local p2, status:I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_a1

    .line 2350
    const-string p2, "Contacts"

    .end local p2           #status:I
    const-string v0, "judgeRight() : state invalid"

    .end local v0           #session:Landroid/lge/lgdrm/DrmContentSession;
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    invoke-static {p0, p1}, Landroid/provider/Contacts$DrmPhotoManager;->deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2352
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2353
    .restart local v0       #session:Landroid/lge/lgdrm/DrmContentSession;
    .restart local p2       #status:I
    :cond_a1
    if-eqz p2, :cond_ad

    .line 2354
    const-string p0, "Contacts"

    .end local p0
    const-string p1, "judgeRight() : Abnormal failure"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2359
    .restart local p0
    .restart local p1
    :cond_ad
    invoke-virtual {v0}, Landroid/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide p0

    .line 2361
    .end local p1
    .local p0, startTime:J
    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    move-result p0

    .line 2365
    .local p0, retVal:I
    const-string p0, "Contacts"

    .end local p0           #retVal:I
    const-string p1, ">> start openDrmStream"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    invoke-virtual {v0}, Landroid/lge/lgdrm/DrmContentSession;->openDrmStream()Landroid/lge/lgdrm/DrmStream;

    move-result-object p0

    .line 2368
    .local p0, drmStream:Landroid/lge/lgdrm/DrmStream;
    if-eqz p0, :cond_d4

    .line 2369
    const-string p1, "Contacts"

    const-string p2, "drmStream is not null"

    .end local p2           #status:I
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_cb} :catch_cd
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_38 .. :try_end_cb} :catch_de

    goto/16 :goto_3

    .line 2373
    .end local v0           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local p0           #drmStream:Landroid/lge/lgdrm/DrmStream;
    :catch_cd
    move-exception p0

    .line 2374
    .local p0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 2375
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2372
    .restart local v0       #session:Landroid/lge/lgdrm/DrmContentSession;
    .local p0, drmStream:Landroid/lge/lgdrm/DrmStream;
    .restart local p2       #status:I
    :cond_d4
    :try_start_d4
    const-string p0, "Contacts"

    .end local p0           #drmStream:Landroid/lge/lgdrm/DrmStream;
    const-string p1, "drmStream is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catch Ljava/lang/SecurityException; {:try_start_d4 .. :try_end_db} :catch_cd
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_d4 .. :try_end_db} :catch_de

    .line 2381
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2376
    .end local v0           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local p2           #status:I
    :catch_de
    move-exception p0

    .line 2377
    .local p0, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual {p0}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    .line 2378
    const/4 p0, 0x0

    goto/16 :goto_3
.end method

.method public static openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 15
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2252
    if-nez p1, :cond_8

    move-object v0, v3

    .line 2288
    :cond_7
    :goto_7
    return-object v0

    .line 2255
    :cond_8
    const-string v0, "drmphotos"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2256
    .local v1, drmphotoUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    const-string v4, "filename"

    aput-object v4, v2, v11

    const-string v4, "data"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2261
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_27
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_71

    move-result v0

    if-nez v0, :cond_34

    .line 2284
    if-eqz v6, :cond_32

    .line 2285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_32
    move-object v0, v3

    .line 2262
    goto :goto_7

    .line 2264
    :cond_34
    const/4 v0, 0x1

    :try_start_35
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_71

    move-result-object v8

    .line 2265
    .local v8, drmFilename:Ljava/lang/String;
    if-nez v8, :cond_42

    .line 2284
    if-eqz v6, :cond_40

    .line 2285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_40
    move-object v0, v3

    .line 2266
    goto :goto_7

    .line 2269
    :cond_42
    :try_start_42
    sget-object v0, Landroid/provider/Contacts$DrmPhotos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2270
    invoke-static {p0, v1, v8}, Landroid/provider/Contacts$DrmPhotoManager;->openDrmPhotoDrmStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/lge/lgdrm/DrmStream;
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_50} :catch_71

    move-result-object v9

    .line 2272
    .local v9, drmStream:Landroid/lge/lgdrm/DrmStream;
    if-eqz v9, :cond_81

    .line 2273
    :try_start_53
    invoke-virtual {v9}, Landroid/lge/lgdrm/DrmStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_68
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_71

    .line 2276
    :goto_56
    const/4 v0, 0x2

    :try_start_57
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 2277
    .local v7, data:[B
    if-eqz v7, :cond_81

    .line 2278
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_62} :catch_71

    .line 2284
    if-eqz v6, :cond_7

    .line 2285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 2274
    .end local v7           #data:[B
    :catch_68
    move-exception v10

    .local v10, e:Ljava/io/IOException;
    :try_start_69
    const-string v0, "Contacts"

    const-string v2, "drmStream wasn\'t closed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_70} :catch_71

    goto :goto_56

    .line 2281
    .end local v8           #drmFilename:Ljava/lang/String;
    .end local v9           #drmStream:Landroid/lge/lgdrm/DrmStream;
    .end local v10           #e:Ljava/io/IOException;
    :catch_71
    move-exception v0

    move-object v10, v0

    .line 2284
    .local v10, e:Ljava/lang/Exception;
    if-eqz v6, :cond_78

    .line 2285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_78
    move-object v0, v3

    .line 2282
    goto :goto_7

    .line 2284
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_7a
    move-exception v0

    if-eqz v6, :cond_80

    .line 2285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2284
    :cond_80
    throw v0

    .restart local v8       #drmFilename:Ljava/lang/String;
    .restart local v9       #drmStream:Landroid/lge/lgdrm/DrmStream;
    :cond_81
    if-eqz v6, :cond_86

    .line 2285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_86
    move-object v0, v3

    .line 2288
    goto :goto_7
.end method
