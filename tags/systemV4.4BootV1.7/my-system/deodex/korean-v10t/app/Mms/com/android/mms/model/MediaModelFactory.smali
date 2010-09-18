.class public Lcom/android/mms/model/MediaModelFactory;
.super Ljava/lang/Object;
.source "MediaModelFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaModelFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .registers 6
    .parameter "pb"
    .parameter "src"

    .prologue
    const-string v3, "cid:"

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz p1, :cond_34

    .line 79
    const-string v1, "cid:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cid:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 92
    :cond_34
    :goto_34
    if-eqz v0, :cond_48

    .line 93
    return-object v0

    .line 82
    :cond_37
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 83
    if-nez v0, :cond_34

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 85
    if-nez v0, :cond_34

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    goto :goto_34

    .line 96
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No part found for the model."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;
    .registers 26
    .parameter "context"
    .parameter "tag"
    .parameter "src"
    .parameter "sme"
    .parameter "part"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/lge/lgdrm/DrmException;,
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    .line 160
    .local v5, bytes:[B
    if-nez v5, :cond_e

    .line 161
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Content-Type of the part may not be null."

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    .restart local p0
    .restart local p1
    :cond_e
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    .line 166
    .local v7, contentType:Ljava/lang/String;
    const/4 v5, 0x0

    .line 169
    .local v5, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/mms/drm/DrmUtils;->isDrmObject(Ljava/lang/String;[B)Z

    move-result v6

    if-eqz v6, :cond_2f6

    .line 170
    const/4 v9, 0x0

    .line 171
    .local v9, mDrmExtension:Ljava/lang/String;
    const/4 v8, 0x0

    .line 172
    .local v8, mDrmContentType:I
    const/4 v11, 0x0

    .line 173
    .local v11, mDrmType:I
    const/4 v12, 0x0

    .line 174
    .local v12, mimeType:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/mms/model/MediaModelFactory;->getPartDataPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 175
    .local v19, drmFileName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 176
    .local v10, session:Landroid/lge/lgdrm/DrmContentSession;
    const/4 v6, 0x0

    .line 178
    .local v6, content:Landroid/lge/lgdrm/DrmContent;
    const-string v13, "MediaModelFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "drmTempFile : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_4a
    invoke-static/range {v19 .. v20}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v10

    .line 183
    if-nez v10, :cond_5a

    .line 185
    const-string p0, "MediaModelFactory"

    .end local p0
    const-string p1, "createContentSession() : Fail"

    .end local p1
    invoke-static/range {p0 .. p1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/16 p0, 0x0

    .line 330
    .end local v6           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v8           #mDrmContentType:I
    .end local v9           #mDrmExtension:Ljava/lang/String;
    .end local v10           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v11           #mDrmType:I
    .end local v12           #mimeType:Ljava/lang/String;
    .end local v19           #drmFileName:Ljava/lang/String;
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    :goto_59
    return-object p0

    .line 190
    .restart local v6       #content:Landroid/lge/lgdrm/DrmContent;
    .restart local v8       #mDrmContentType:I
    .restart local v9       #mDrmExtension:Ljava/lang/String;
    .restart local v10       #session:Landroid/lge/lgdrm/DrmContentSession;
    .restart local v11       #mDrmType:I
    .restart local v12       #mimeType:Ljava/lang/String;
    .restart local v19       #drmFileName:Ljava/lang/String;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_5a
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;
    :try_end_5e
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_4a .. :try_end_5e} :catch_1e0
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_5e} :catch_1f4

    move-result-object v18

    .line 191
    .end local v6           #content:Landroid/lge/lgdrm/DrmContent;
    .local v18, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v18, :cond_6b

    .line 193
    :try_start_61
    const-string p0, "MediaModelFactory"

    .end local p0
    const-string p1, "getSelectedContent(true) : Fail"

    .end local p1
    invoke-static/range {p0 .. p1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/16 p0, 0x0

    goto :goto_59

    .line 197
    .restart local p0
    .restart local p1
    :cond_6b
    invoke-virtual/range {v18 .. v18}, Landroid/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v11

    .line 198
    invoke-virtual/range {v18 .. v18}, Landroid/lge/lgdrm/DrmContent;->getContentType()I
    :try_end_72
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_61 .. :try_end_72} :catch_45a
    .catch Ljava/lang/SecurityException; {:try_start_61 .. :try_end_72} :catch_41e

    move-result v6

    .line 199
    .end local v8           #mDrmContentType:I
    .local v6, mDrmContentType:I
    const/4 v8, 0x2

    :try_start_74
    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;
    :try_end_7a
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_74 .. :try_end_7a} :catch_469
    .catch Ljava/lang/SecurityException; {:try_start_74 .. :try_end_7a} :catch_42d

    move-result-object v8

    .line 200
    .end local v9           #mDrmExtension:Ljava/lang/String;
    .local v8, mDrmExtension:Ljava/lang/String;
    const/4 v9, 0x1

    :try_start_7c
    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;
    :try_end_82
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_7c .. :try_end_82} :catch_478
    .catch Ljava/lang/SecurityException; {:try_start_7c .. :try_end_82} :catch_43c

    move-result-object v9

    .line 202
    .end local v12           #mimeType:Ljava/lang/String;
    .local v9, mimeType:Ljava/lang/String;
    :try_start_83
    const-string v12, "MediaModelFactory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mDrmType : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v12, "MediaModelFactory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mDrmContentType : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v12, "MediaModelFactory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mDrmExtension : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v12, "MediaModelFactory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mimeType : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e3
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_83 .. :try_end_e3} :catch_487
    .catch Ljava/lang/SecurityException; {:try_start_83 .. :try_end_e3} :catch_44b

    .line 217
    const-string v5, "text"

    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_208

    .line 218
    new-instance v5, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v9

    .end local v9           #mimeType:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v11

    .end local v11           #mDrmType:I
    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v12, p5

    invoke-direct/range {v5 .. v12}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/lge/lgdrm/DrmContentSession;[BLcom/android/mms/model/RegionModel;)V

    .line 253
    .end local v6           #mDrmContentType:I
    .end local v8           #mDrmExtension:Ljava/lang/String;
    .end local p1
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    :goto_101
    const-string p0, "MediaModelFactory"

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "media.setFileName :"

    .end local p2
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    if-eqz v19, :cond_125

    .line 256
    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setFileName(Ljava/lang/String;)V

    .line 258
    :cond_125
    if-eqz v18, :cond_12d

    .line 259
    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setDrmContent(Landroid/lge/lgdrm/DrmContent;)V

    .line 296
    .end local v10           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v18           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v19           #drmFileName:Ljava/lang/String;
    :cond_12d
    :goto_12d
    const/16 p0, 0x0

    .line 297
    .local p0, begin:I
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object p2

    .line 298
    .local p2, tl:Lorg/w3c/dom/smil/TimeList;
    if-eqz p2, :cond_155

    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result p1

    if-lez p1, :cond_155

    .line 300
    const/16 p0, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    .end local p0           #begin:I
    move-result-object p0

    .line 301
    .local p0, t:Lorg/w3c/dom/smil/Time;
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide p0

    .end local p0           #t:Lorg/w3c/dom/smil/Time;
    const-wide p4, 0x408f400000000000L

    mul-double p0, p0, p4

    move-wide/from16 v0, p0

    double-to-int v0, v0

    move/from16 p0, v0

    .line 303
    .end local p4
    .local p0, begin:I
    :cond_155
    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setBegin(I)V

    .line 306
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getDur()F

    move-result p1

    const/high16 p4, 0x447a

    mul-float p1, p1, p4

    move/from16 v0, p1

    float-to-int v0, v0

    move/from16 p1, v0

    .line 307
    .local p1, duration:I
    if-gtz p1, :cond_49c

    .line 308
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object p4

    .line 309
    .end local p2           #tl:Lorg/w3c/dom/smil/TimeList;
    .local p4, tl:Lorg/w3c/dom/smil/TimeList;
    if-eqz p4, :cond_496

    invoke-interface/range {p4 .. p4}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result p2

    if-lez p2, :cond_496

    .line 311
    const/16 p2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object p2

    .line 312
    .local p2, t:Lorg/w3c/dom/smil/Time;
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result p5

    .end local p5
    if-eqz p5, :cond_496

    .line 313
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide p1

    .end local p1           #duration:I
    const-wide v6, 0x408f400000000000L

    mul-double p1, p1, v6

    move-wide/from16 v0, p1

    double-to-int v0, v0

    move/from16 p1, v0

    sub-int p0, p1, p0

    .local p0, duration:I
    move-object/from16 p1, p4

    .line 319
    .end local p2           #t:Lorg/w3c/dom/smil/Time;
    .end local p4           #tl:Lorg/w3c/dom/smil/TimeList;
    .local p1, tl:Lorg/w3c/dom/smil/TimeList;
    :goto_19a
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object p1

    .end local p1           #tl:Lorg/w3c/dom/smil/TimeList;
    if-eqz p1, :cond_1ac

    .line 321
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result p1

    if-eqz p1, :cond_1ac

    .line 322
    const/16 p0, -0x3e8

    .line 325
    :cond_1ac
    const-string p1, "MediaModelFactory"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "media.setDuration :"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p1 .. p2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 329
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getFill()S

    move-result p0

    .end local p0           #duration:I
    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    move-object/from16 p0, v5

    .line 330
    goto/16 :goto_59

    .line 208
    .local v6, content:Landroid/lge/lgdrm/DrmContent;
    .local v8, mDrmContentType:I
    .local v9, mDrmExtension:Ljava/lang/String;
    .restart local v10       #session:Landroid/lge/lgdrm/DrmContentSession;
    .restart local v11       #mDrmType:I
    .restart local v12       #mimeType:Ljava/lang/String;
    .restart local v19       #drmFileName:Ljava/lang/String;
    .local p2, src:Ljava/lang/String;
    .local p4, part:Lcom/google/android/mms/pdu/PduPart;
    .restart local p5
    :catch_1e0
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p5, v12

    .end local v12           #mimeType:Ljava/lang/String;
    .local p5, mimeType:Ljava/lang/String;
    move/from16 p4, v11

    .end local v11           #mDrmType:I
    .local p4, mDrmType:I
    move/from16 p2, v8

    .end local v8           #mDrmContentType:I
    .local p2, mDrmContentType:I
    move-object/from16 p3, v9

    .end local v9           #mDrmExtension:Ljava/lang/String;
    .local p3, mDrmExtension:Ljava/lang/String;
    move-object/from16 p0, v6

    .line 209
    .end local v6           #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, content:Landroid/lge/lgdrm/DrmContent;
    .local p1, e:Landroid/lge/lgdrm/DrmException;
    :goto_1ed
    invoke-virtual/range {p1 .. p1}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    .line 210
    const/16 p0, 0x0

    goto/16 :goto_59

    .line 212
    .end local p0           #content:Landroid/lge/lgdrm/DrmContent;
    .end local p1           #e:Landroid/lge/lgdrm/DrmException;
    .restart local v6       #content:Landroid/lge/lgdrm/DrmContent;
    .restart local v8       #mDrmContentType:I
    .restart local v9       #mDrmExtension:Ljava/lang/String;
    .restart local v11       #mDrmType:I
    .restart local v12       #mimeType:Ljava/lang/String;
    .local p2, src:Ljava/lang/String;
    .local p3, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local p4, part:Lcom/google/android/mms/pdu/PduPart;
    .local p5, regionModel:Lcom/android/mms/model/RegionModel;
    :catch_1f4
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p5, v12

    .end local v12           #mimeType:Ljava/lang/String;
    .local p5, mimeType:Ljava/lang/String;
    move/from16 p4, v11

    .end local v11           #mDrmType:I
    .local p4, mDrmType:I
    move/from16 p2, v8

    .end local v8           #mDrmContentType:I
    .local p2, mDrmContentType:I
    move-object/from16 p3, v9

    .end local v9           #mDrmExtension:Ljava/lang/String;
    .local p3, mDrmExtension:Ljava/lang/String;
    move-object/from16 p0, v6

    .line 213
    .end local v6           #content:Landroid/lge/lgdrm/DrmContent;
    .restart local p0       #content:Landroid/lge/lgdrm/DrmContent;
    .local p1, e:Ljava/lang/SecurityException;
    :goto_201
    invoke-virtual/range {p1 .. p1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 214
    const/16 p0, 0x0

    goto/16 :goto_59

    .line 220
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .local v6, mDrmContentType:I
    .local v8, mDrmExtension:Ljava/lang/String;
    .local v9, mimeType:Ljava/lang/String;
    .restart local v11       #mDrmType:I
    .restart local v18       #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, context:Landroid/content/Context;
    .local p1, tag:Ljava/lang/String;
    .local p2, src:Ljava/lang/String;
    .local p3, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local p4, part:Lcom/google/android/mms/pdu/PduPart;
    .local p5, regionModel:Lcom/android/mms/model/RegionModel;
    :cond_208
    const-string v5, "img"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_227

    .line 221
    new-instance v5, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v16

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    move-object/from16 v17, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/lge/lgdrm/DrmContentSession;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .end local v11           #mDrmType:I
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_101

    .line 223
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local v11       #mDrmType:I
    :cond_227
    const-string v5, "video"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_246

    .line 224
    new-instance v5, Lcom/android/mms/model/VideoModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v16

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    move-object/from16 v17, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/lge/lgdrm/DrmContentSession;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .end local v11           #mDrmType:I
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_101

    .line 226
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local v11       #mDrmType:I
    :cond_246
    const-string v5, "audio"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_263

    .line 227
    new-instance v5, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v16

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/lge/lgdrm/DrmContentSession;Landroid/net/Uri;)V

    .end local v11           #mDrmType:I
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_101

    .line 229
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local v11       #mDrmType:I
    :cond_263
    const-string v5, "ref"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d9

    .line 236
    const/16 p1, 0x1

    move v0, v6

    move/from16 v1, p1

    if-ne v0, v1, :cond_289

    .line 237
    .end local p1           #tag:Ljava/lang/String;
    new-instance v5, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v16

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    move-object/from16 v17, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/lge/lgdrm/DrmContentSession;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .end local v11           #mDrmType:I
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_101

    .line 239
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local v11       #mDrmType:I
    :cond_289
    const/16 p1, 0x3

    move v0, v6

    move/from16 v1, p1

    if-ne v0, v1, :cond_2a4

    .line 240
    new-instance v5, Lcom/android/mms/model/VideoModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v16

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    move-object/from16 v17, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/lge/lgdrm/DrmContentSession;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .end local v11           #mDrmType:I
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_101

    .line 242
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local v11       #mDrmType:I
    :cond_2a4
    const/16 p1, 0x2

    move v0, v6

    move/from16 v1, p1

    if-ne v0, v1, :cond_2bd

    .line 243
    new-instance v5, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v16

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object v15, v10

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/lge/lgdrm/DrmContentSession;Landroid/net/Uri;)V

    .end local v11           #mDrmType:I
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_101

    .line 246
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local v11       #mDrmType:I
    :cond_2bd
    new-instance p0, Lcom/android/mms/UnsupportContentTypeException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported Content-Type: "

    .end local p2           #src:Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1       #tag:Ljava/lang/String;
    .restart local p2       #src:Ljava/lang/String;
    :cond_2d9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #src:Ljava/lang/String;
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported TAG: "

    .end local p3           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #tag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 261
    .end local v6           #mDrmContentType:I
    .end local v8           #mDrmExtension:Ljava/lang/String;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v11           #mDrmType:I
    .end local v18           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v19           #drmFileName:Ljava/lang/String;
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1       #tag:Ljava/lang/String;
    .restart local p2       #src:Ljava/lang/String;
    .restart local p3       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_2f6
    const-string v5, "text"

    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_318

    .line 262
    new-instance v5, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v16

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v17, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_12d

    .line 264
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_318
    const-string v5, "img"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_336

    .line 265
    new-instance v5, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_12d

    .line 267
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_336
    const-string v5, "video"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_354

    .line 268
    new-instance v5, Lcom/android/mms/model/VideoModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_12d

    .line 270
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_354
    const-string v5, "audio"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_372

    .line 271
    new-instance v5, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object p1

    .end local p1           #tag:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_12d

    .line 273
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .restart local p1       #tag:Ljava/lang/String;
    :cond_372
    const-string v5, "ref"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_401

    .line 274
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result p1

    .end local p1           #tag:Ljava/lang/String;
    if-eqz p1, :cond_39a

    .line 275
    new-instance v5, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v16

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v17, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_12d

    .line 277
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_39a
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b3

    .line 278
    new-instance v5, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_12d

    .line 280
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_3b3
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3cc

    .line 281
    new-instance v5, Lcom/android/mms/model/VideoModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    move-object v11, v5

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_12d

    .line 283
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_3cc
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e5

    .line 284
    new-instance v5, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object p1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_12d

    .line 287
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_3e5
    new-instance p0, Lcom/android/mms/UnsupportContentTypeException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported Content-Type: "

    .end local p2           #src:Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 291
    .restart local p0       #context:Landroid/content/Context;
    .restart local p1       #tag:Ljava/lang/String;
    .restart local p2       #src:Ljava/lang/String;
    :cond_401
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #context:Landroid/content/Context;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #src:Ljava/lang/String;
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported TAG: "

    .end local p3           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #tag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    .local v8, mDrmContentType:I
    .local v9, mDrmExtension:Ljava/lang/String;
    .restart local v10       #session:Landroid/lge/lgdrm/DrmContentSession;
    .restart local v11       #mDrmType:I
    .restart local v12       #mimeType:Ljava/lang/String;
    .restart local v18       #content:Landroid/lge/lgdrm/DrmContent;
    .restart local v19       #drmFileName:Ljava/lang/String;
    .restart local p2       #src:Ljava/lang/String;
    .restart local p3       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_41e
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p5, v12

    .end local v12           #mimeType:Ljava/lang/String;
    .local p5, mimeType:Ljava/lang/String;
    move/from16 p4, v11

    .end local v11           #mDrmType:I
    .local p4, mDrmType:I
    move/from16 p2, v8

    .end local v8           #mDrmContentType:I
    .local p2, mDrmContentType:I
    move-object/from16 p3, v9

    .end local v9           #mDrmExtension:Ljava/lang/String;
    .local p3, mDrmExtension:Ljava/lang/String;
    move-object/from16 p0, v18

    .end local v18           #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, content:Landroid/lge/lgdrm/DrmContent;
    goto/16 :goto_201

    .restart local v6       #mDrmContentType:I
    .restart local v9       #mDrmExtension:Ljava/lang/String;
    .restart local v11       #mDrmType:I
    .restart local v12       #mimeType:Ljava/lang/String;
    .restart local v18       #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #tag:Ljava/lang/String;
    .local p2, src:Ljava/lang/String;
    .local p3, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local p4, part:Lcom/google/android/mms/pdu/PduPart;
    .local p5, regionModel:Lcom/android/mms/model/RegionModel;
    :catch_42d
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p5, v12

    .end local v12           #mimeType:Ljava/lang/String;
    .local p5, mimeType:Ljava/lang/String;
    move/from16 p4, v11

    .end local v11           #mDrmType:I
    .local p4, mDrmType:I
    move/from16 p2, v6

    .end local v6           #mDrmContentType:I
    .local p2, mDrmContentType:I
    move-object/from16 p3, v9

    .end local v9           #mDrmExtension:Ljava/lang/String;
    .local p3, mDrmExtension:Ljava/lang/String;
    move-object/from16 p0, v18

    .end local v18           #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, content:Landroid/lge/lgdrm/DrmContent;
    goto/16 :goto_201

    .restart local v6       #mDrmContentType:I
    .local v8, mDrmExtension:Ljava/lang/String;
    .restart local v11       #mDrmType:I
    .restart local v12       #mimeType:Ljava/lang/String;
    .restart local v18       #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, context:Landroid/content/Context;
    .local p2, src:Ljava/lang/String;
    .local p3, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local p4, part:Lcom/google/android/mms/pdu/PduPart;
    .local p5, regionModel:Lcom/android/mms/model/RegionModel;
    :catch_43c
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p5, v12

    .end local v12           #mimeType:Ljava/lang/String;
    .local p5, mimeType:Ljava/lang/String;
    move/from16 p4, v11

    .end local v11           #mDrmType:I
    .local p4, mDrmType:I
    move/from16 p2, v6

    .end local v6           #mDrmContentType:I
    .local p2, mDrmContentType:I
    move-object/from16 p3, v8

    .end local v8           #mDrmExtension:Ljava/lang/String;
    .local p3, mDrmExtension:Ljava/lang/String;
    move-object/from16 p0, v18

    .end local v18           #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, content:Landroid/lge/lgdrm/DrmContent;
    goto/16 :goto_201

    .restart local v6       #mDrmContentType:I
    .restart local v8       #mDrmExtension:Ljava/lang/String;
    .local v9, mimeType:Ljava/lang/String;
    .restart local v11       #mDrmType:I
    .restart local v18       #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, context:Landroid/content/Context;
    .local p2, src:Ljava/lang/String;
    .local p3, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local p4, part:Lcom/google/android/mms/pdu/PduPart;
    .local p5, regionModel:Lcom/android/mms/model/RegionModel;
    :catch_44b
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p5, v9

    .end local v9           #mimeType:Ljava/lang/String;
    .local p5, mimeType:Ljava/lang/String;
    move/from16 p4, v11

    .end local v11           #mDrmType:I
    .local p4, mDrmType:I
    move/from16 p2, v6

    .end local v6           #mDrmContentType:I
    .local p2, mDrmContentType:I
    move-object/from16 p3, v8

    .end local v8           #mDrmExtension:Ljava/lang/String;
    .local p3, mDrmExtension:Ljava/lang/String;
    move-object/from16 p0, v18

    .end local v18           #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, content:Landroid/lge/lgdrm/DrmContent;
    goto/16 :goto_201

    .line 208
    .end local p0           #content:Landroid/lge/lgdrm/DrmContent;
    .end local p1           #tag:Ljava/lang/String;
    .local v8, mDrmContentType:I
    .local v9, mDrmExtension:Ljava/lang/String;
    .restart local v11       #mDrmType:I
    .restart local v12       #mimeType:Ljava/lang/String;
    .restart local v18       #content:Landroid/lge/lgdrm/DrmContent;
    .local p2, src:Ljava/lang/String;
    .local p3, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local p4, part:Lcom/google/android/mms/pdu/PduPart;
    .local p5, regionModel:Lcom/android/mms/model/RegionModel;
    :catch_45a
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p5, v12

    .end local v12           #mimeType:Ljava/lang/String;
    .local p5, mimeType:Ljava/lang/String;
    move/from16 p4, v11

    .end local v11           #mDrmType:I
    .local p4, mDrmType:I
    move/from16 p2, v8

    .end local v8           #mDrmContentType:I
    .local p2, mDrmContentType:I
    move-object/from16 p3, v9

    .end local v9           #mDrmExtension:Ljava/lang/String;
    .local p3, mDrmExtension:Ljava/lang/String;
    move-object/from16 p0, v18

    .end local v18           #content:Landroid/lge/lgdrm/DrmContent;
    .restart local p0       #content:Landroid/lge/lgdrm/DrmContent;
    goto/16 :goto_1ed

    .restart local v6       #mDrmContentType:I
    .restart local v9       #mDrmExtension:Ljava/lang/String;
    .restart local v11       #mDrmType:I
    .restart local v12       #mimeType:Ljava/lang/String;
    .restart local v18       #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #tag:Ljava/lang/String;
    .local p2, src:Ljava/lang/String;
    .local p3, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local p4, part:Lcom/google/android/mms/pdu/PduPart;
    .local p5, regionModel:Lcom/android/mms/model/RegionModel;
    :catch_469
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p5, v12

    .end local v12           #mimeType:Ljava/lang/String;
    .local p5, mimeType:Ljava/lang/String;
    move/from16 p4, v11

    .end local v11           #mDrmType:I
    .local p4, mDrmType:I
    move/from16 p2, v6

    .end local v6           #mDrmContentType:I
    .local p2, mDrmContentType:I
    move-object/from16 p3, v9

    .end local v9           #mDrmExtension:Ljava/lang/String;
    .local p3, mDrmExtension:Ljava/lang/String;
    move-object/from16 p0, v18

    .end local v18           #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, content:Landroid/lge/lgdrm/DrmContent;
    goto/16 :goto_1ed

    .restart local v6       #mDrmContentType:I
    .local v8, mDrmExtension:Ljava/lang/String;
    .restart local v11       #mDrmType:I
    .restart local v12       #mimeType:Ljava/lang/String;
    .restart local v18       #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, context:Landroid/content/Context;
    .local p2, src:Ljava/lang/String;
    .local p3, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local p4, part:Lcom/google/android/mms/pdu/PduPart;
    .local p5, regionModel:Lcom/android/mms/model/RegionModel;
    :catch_478
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p5, v12

    .end local v12           #mimeType:Ljava/lang/String;
    .local p5, mimeType:Ljava/lang/String;
    move/from16 p4, v11

    .end local v11           #mDrmType:I
    .local p4, mDrmType:I
    move/from16 p2, v6

    .end local v6           #mDrmContentType:I
    .local p2, mDrmContentType:I
    move-object/from16 p3, v8

    .end local v8           #mDrmExtension:Ljava/lang/String;
    .local p3, mDrmExtension:Ljava/lang/String;
    move-object/from16 p0, v18

    .end local v18           #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, content:Landroid/lge/lgdrm/DrmContent;
    goto/16 :goto_1ed

    .restart local v6       #mDrmContentType:I
    .restart local v8       #mDrmExtension:Ljava/lang/String;
    .local v9, mimeType:Ljava/lang/String;
    .restart local v11       #mDrmType:I
    .restart local v18       #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, context:Landroid/content/Context;
    .local p2, src:Ljava/lang/String;
    .local p3, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local p4, part:Lcom/google/android/mms/pdu/PduPart;
    .local p5, regionModel:Lcom/android/mms/model/RegionModel;
    :catch_487
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p5, v9

    .end local v9           #mimeType:Ljava/lang/String;
    .local p5, mimeType:Ljava/lang/String;
    move/from16 p4, v11

    .end local v11           #mDrmType:I
    .local p4, mDrmType:I
    move/from16 p2, v6

    .end local v6           #mDrmContentType:I
    .local p2, mDrmContentType:I
    move-object/from16 p3, v8

    .end local v8           #mDrmExtension:Ljava/lang/String;
    .local p3, mDrmExtension:Ljava/lang/String;
    move-object/from16 p0, v18

    .end local v18           #content:Landroid/lge/lgdrm/DrmContent;
    .local p0, content:Landroid/lge/lgdrm/DrmContent;
    goto/16 :goto_1ed

    .end local v10           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v19           #drmFileName:Ljava/lang/String;
    .end local p2           #mDrmContentType:I
    .end local p5           #mimeType:Ljava/lang/String;
    .local p0, begin:I
    .local p1, duration:I
    .local p3, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local p4, tl:Lorg/w3c/dom/smil/TimeList;
    :cond_496
    move/from16 p0, p1

    .end local p1           #duration:I
    .local p0, duration:I
    move-object/from16 p1, p4

    .end local p4           #tl:Lorg/w3c/dom/smil/TimeList;
    .local p1, tl:Lorg/w3c/dom/smil/TimeList;
    goto/16 :goto_19a

    .local p0, begin:I
    .local p1, duration:I
    .local p2, tl:Lorg/w3c/dom/smil/TimeList;
    .local p5, regionModel:Lcom/android/mms/model/RegionModel;
    :cond_49c
    move/from16 p0, p1

    .end local p1           #duration:I
    .local p0, duration:I
    move-object/from16 p1, p2

    .end local p2           #tl:Lorg/w3c/dom/smil/TimeList;
    .local p1, tl:Lorg/w3c/dom/smil/TimeList;
    goto/16 :goto_19a
.end method

.method public static getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MediaModel;
    .registers 18
    .parameter "context"
    .parameter "sme"
    .parameter "layouts"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/lge/lgdrm/DrmException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;,
            Lcom/android/mms/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, tag:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, src:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 66
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    instance-of v2, p1, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    if-eqz v2, :cond_1f

    .line 67
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v5, v0

    move-object v2, p0

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    .line 70
    :goto_1e
    return-object v2

    :cond_1f
    const/4 v13, 0x0

    move-object v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object v11, p1

    move-object v12, v7

    invoke-static/range {v8 .. v13}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    goto :goto_1e
.end method

.method public static getPartDataPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, cr:Landroid/content/ContentResolver;
    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 130
    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 132
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_42

    .line 134
    :try_start_10
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 142
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_3d

    move-result-object v8

    .line 149
    .local v8, path:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v8

    .line 146
    .end local v8           #path:Ljava/lang/String;
    :cond_24
    :try_start_24
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_3d

    .line 149
    :catchall_3d
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 152
    :cond_42
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;)Lcom/android/mms/model/MediaModel;
    .registers 14
    .parameter "context"
    .parameter "tag"
    .parameter "src"
    .parameter "srme"
    .parameter "layouts"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/lge/lgdrm/DrmException;,
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;,
            Lcom/android/mms/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->getRegion()Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v7

    .line 103
    .local v7, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    if-eqz v7, :cond_1a

    .line 104
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 105
    .local v5, region:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_38

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 119
    :goto_19
    return-object v0

    .line 109
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_1a
    const/4 v6, 0x0

    .line 111
    .local v6, rId:Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 112
    const-string v6, "Text"

    .line 117
    :goto_25
    invoke-virtual {p4, v6}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 118
    .restart local v5       #region:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_38

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 119
    invoke-static/range {v0 .. v5}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    goto :goto_19

    .line 114
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_35
    const-string v6, "Image"

    goto :goto_25

    .line 123
    .end local v6           #rId:Ljava/lang/String;
    .restart local v5       #region:Lcom/android/mms/model/RegionModel;
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Region not found or bad region ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
