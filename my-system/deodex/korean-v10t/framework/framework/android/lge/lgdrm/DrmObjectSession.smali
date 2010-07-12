.class public final Landroid/lge/lgdrm/DrmObjectSession;
.super Ljava/lang/Object;
.source "DrmObjectSession.java"


# static fields
.field private static final PINIT_HND:I = 0x0

.field private static final PINIT_MAX:I = 0x3

.field private static final PINIT_REQ:I = 0x2

.field private static final PINIT_SL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DrmObjSes"


# instance fields
.field bEndError:Z

.field private context:Landroid/content/Context;

.field private downloadAgent:I

.field private errorMsg:Ljava/lang/String;

.field private failReason:I

.field private mMediaScanner:Landroid/media/MediaScanner;

.field private nativeProcessHandle:I

.field private nativeRequestHandle:I

.field private nativeSLType:I

.field private nativeSession:I

.field nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

.field private redirectURL:Ljava/lang/String;

.field private storedFilename:Ljava/lang/String;

.field private validSession:Z

.field private waitFlag:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    return-void
.end method

.method protected constructor <init>(ILandroid/content/Context;I)V
    .registers 5
    .parameter "downloadAgent"
    .parameter "context"
    .parameter "session"

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput p1, p0, Landroid/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    .line 312
    iput-object p2, p0, Landroid/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    .line 313
    iput p3, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 316
    new-instance v0, Landroid/media/MediaScanner;

    invoke-direct {v0, p2}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->mMediaScanner:Landroid/media/MediaScanner;

    .line 317
    return-void
.end method

.method private native nativeDestroySession(II)V
.end method

.method private native nativeProcessEnd(IIILjava/lang/String;)I
.end method

.method private native nativeProcessInit(ILjava/lang/String;Ljava/lang/String;II)[I
.end method

.method private native nativeProcessStatus(I)I
.end method

.method private native nativeProcessUpdate(I[BII)I
.end method

.method private native nativeSetContentSize(IJ)I
.end method

.method private postWaitResult(Ljava/lang/String;IILjava/lang/String;)V
    .registers 29
    .parameter "resultReceiver"
    .parameter "result"
    .parameter "waitType"
    .parameter "filename"

    .prologue
    .line 1004
    const/4 v5, 0x0

    .line 1006
    .local v5, DrmContentType:I
    const-string v21, "DrmObjSes"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "postWaitResult() : result = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " waitType = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " filename = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    if-nez p1, :cond_43

    .line 1011
    const-string v21, "DrmObjSes"

    const-string v22, "postWaitResult() : resultReceiver is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_42
    :goto_42
    return-void

    .line 1016
    :cond_43
    const-string v21, ";"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1017
    .local v9, component:[Ljava/lang/String;
    if-nez v9, :cond_57

    .line 1019
    const-string v21, "DrmObjSes"

    const-string v22, "postWaitResult() : Fail to devide package;class"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 1023
    :cond_57
    if-eqz p4, :cond_42

    .line 1031
    :try_start_59
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v20

    .line 1032
    .local v20, session:Landroid/lge/lgdrm/DrmContentSession;
    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v10

    .line 1033
    .local v10, content:Landroid/lge/lgdrm/DrmContent;
    const/16 v21, 0x3

    move-object v0, v10

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v8

    .line 1034
    .local v8, cid:Ljava/lang/String;
    const/16 v21, 0x1

    move-object v0, v10

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/lge/lgdrm/DrmContent;->getContentInfo(I)Ljava/lang/String;

    move-result-object v16

    .line 1036
    .local v16, mimetype:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmObjectSession;->mMediaScanner:Landroid/media/MediaScanner;

    move-object/from16 v21, v0

    const-string v22, "external"

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object v2, v8

    move-object/from16 v3, v22

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->scanSingleDrmFileAndUpdateMetaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 1037
    .local v19, scannerResult:I
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_148

    .line 1039
    const-string v21, "DrmObjSes"

    const-string v22, "postWaitResult() : songth!! - update DB"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_a3} :catch_151

    .line 1055
    .end local v8           #cid:Ljava/lang/String;
    .end local v10           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v16           #mimetype:Ljava/lang/String;
    .end local v19           #scannerResult:I
    .end local v20           #session:Landroid/lge/lgdrm/DrmContentSession;
    :goto_a3
    const/16 v21, 0x0

    aget-object v21, v9, v21

    const-string v22, "com.android.providers.downloads"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    .line 1056
    .local v11, downloadProvider:Z
    const/16 v21, 0x0

    aget-object v21, v9, v21

    const-string v22, "arcsoft.android.arcmmp"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 1057
    .local v7, arcMMP:Z
    const/16 v21, 0x0

    aget-object v21, v9, v21

    const-string v22, "arcsoft.android.arcmediagallery"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1058
    .local v6, arcGallery:Z
    const/16 v21, 0x0

    aget-object v21, v9, v21

    const-string v22, "com.android.mms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    .line 1061
    .local v17, mms:Z
    if-nez v7, :cond_d1

    if-nez v6, :cond_d1

    if-eqz v17, :cond_21a

    :cond_d1
    const/16 v21, 0x2

    move/from16 v0, p3

    move/from16 v1, v21

    if-eq v0, v1, :cond_21a

    .line 1064
    new-instance v15, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v15, intent:Landroid/content/Intent;
    const/16 v21, 0x2e

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 1067
    .local v14, index:I
    add-int/lit8 v21, v14, 0x1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, p4

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1068
    .local v13, ext:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1070
    .restart local v16       #mimetype:Ljava/lang/String;
    const-string v21, "dm"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_159

    .line 1071
    const-string v16, "application/vnd.oma.drm.message"

    .line 1079
    :goto_10c
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 1081
    .local v18, path:Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_123

    .line 1083
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    .line 1085
    :cond_123
    move-object v0, v15

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    const/16 v21, 0x0

    :try_start_12d
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v20

    .line 1090
    .restart local v20       #session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v20, :cond_18b

    .line 1092
    const-string v21, "DrmObjSes"

    const-string v22, "createContentSession() : Fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catch Ljava/lang/SecurityException; {:try_start_12d .. :try_end_13e} :catch_140
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_12d .. :try_end_13e} :catch_19c

    goto/16 :goto_42

    .line 1108
    .end local v20           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_140
    move-exception v21

    move-object/from16 v12, v21

    .line 1110
    .local v12, e:Ljava/lang/SecurityException;
    invoke-virtual {v12}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_42

    .line 1044
    .end local v6           #arcGallery:Z
    .end local v7           #arcMMP:Z
    .end local v11           #downloadProvider:Z
    .end local v12           #e:Ljava/lang/SecurityException;
    .end local v13           #ext:Ljava/lang/String;
    .end local v14           #index:I
    .end local v15           #intent:Landroid/content/Intent;
    .end local v17           #mms:Z
    .end local v18           #path:Landroid/net/Uri;
    .restart local v8       #cid:Ljava/lang/String;
    .restart local v10       #content:Landroid/lge/lgdrm/DrmContent;
    .restart local v19       #scannerResult:I
    .restart local v20       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_148
    :try_start_148
    const-string v21, "DrmObjSes"

    const-string v22, "postWaitResult() : songth!! - no need to update DB"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14f} :catch_151

    goto/16 :goto_a3

    .line 1047
    .end local v8           #cid:Ljava/lang/String;
    .end local v10           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v16           #mimetype:Ljava/lang/String;
    .end local v19           #scannerResult:I
    .end local v20           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_151
    move-exception v21

    move-object/from16 v12, v21

    .line 1050
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a3

    .line 1072
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v6       #arcGallery:Z
    .restart local v7       #arcMMP:Z
    .restart local v11       #downloadProvider:Z
    .restart local v13       #ext:Ljava/lang/String;
    .restart local v14       #index:I
    .restart local v15       #intent:Landroid/content/Intent;
    .restart local v16       #mimetype:Ljava/lang/String;
    .restart local v17       #mms:Z
    :cond_159
    const-string v21, "dcf"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_167

    .line 1073
    const-string v16, "application/vnd.oma.drm.content"

    goto :goto_10c

    .line 1074
    :cond_167
    const-string v21, "odf"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_188

    const-string v21, "o4v"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_188

    const-string v21, "o4a"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_42

    .line 1075
    :cond_188
    const-string v16, "application/vnd.oma.drm.dcf"

    goto :goto_10c

    .line 1097
    .restart local v18       #path:Landroid/net/Uri;
    .restart local v20       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_18b
    const/16 v21, 0x1

    :try_start_18d
    invoke-virtual/range {v20 .. v21}, Landroid/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Landroid/lge/lgdrm/DrmContent;

    move-result-object v10

    .line 1098
    .restart local v10       #content:Landroid/lge/lgdrm/DrmContent;
    if-nez v10, :cond_1a4

    .line 1100
    const-string v21, "DrmObjSes"

    const-string v22, "getSelectedContent(true) : Fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19a
    .catch Ljava/lang/SecurityException; {:try_start_18d .. :try_end_19a} :catch_140
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_18d .. :try_end_19a} :catch_19c

    goto/16 :goto_42

    .line 1113
    .end local v10           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v20           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_19c
    move-exception v21

    move-object/from16 v12, v21

    .line 1115
    .local v12, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual {v12}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto/16 :goto_42

    .line 1104
    .end local v12           #e:Landroid/lge/lgdrm/DrmException;
    .restart local v10       #content:Landroid/lge/lgdrm/DrmContent;
    .restart local v20       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_1a4
    :try_start_1a4
    invoke-virtual {v10}, Landroid/lge/lgdrm/DrmContent;->getContentType()I

    move-result v5

    .line 1105
    const-string v21, "BrowserDownloadPage"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "DrmContentType["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c9
    .catch Ljava/lang/SecurityException; {:try_start_1a4 .. :try_end_1c9} :catch_140
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_1a4 .. :try_end_1c9} :catch_19c

    .line 1120
    if-lez v5, :cond_1ce

    .line 1122
    packed-switch v5, :pswitch_data_262

    .line 1157
    .end local v10           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v13           #ext:Ljava/lang/String;
    .end local v14           #index:I
    .end local v16           #mimetype:Ljava/lang/String;
    .end local v18           #path:Landroid/net/Uri;
    .end local v20           #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_1ce
    :goto_1ce
    if-nez v11, :cond_254

    const/16 v21, 0x2

    move/from16 v0, p3

    move/from16 v1, v21

    if-eq v0, v1, :cond_254

    .line 1161
    const/high16 v21, 0x1000

    :try_start_1da
    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1ec} :catch_1ee

    goto/16 :goto_42

    .line 1170
    :catch_1ee
    move-exception v21

    move-object/from16 v12, v21

    .line 1173
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_42

    .line 1125
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v10       #content:Landroid/lge/lgdrm/DrmContent;
    .restart local v13       #ext:Ljava/lang/String;
    .restart local v14       #index:I
    .restart local v16       #mimetype:Ljava/lang/String;
    .restart local v18       #path:Landroid/net/Uri;
    .restart local v20       #session:Landroid/lge/lgdrm/DrmContentSession;
    :pswitch_1f6
    const-string v21, "android.lge.lgdrm.IMAGE_CATEGORY"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1ce

    .line 1128
    :pswitch_1ff
    const-string v21, "android.lge.lgdrm.AUDIO_CATEGORY"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1ce

    .line 1131
    :pswitch_208
    const-string v21, "android.lge.lgdrm.VIDEO_CATEGORY"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1ce

    .line 1134
    :pswitch_211
    const-string v21, "android.lge.lgdrm.GAME_CATEGORY"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1ce

    .line 1145
    .end local v10           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v13           #ext:Ljava/lang/String;
    .end local v14           #index:I
    .end local v15           #intent:Landroid/content/Intent;
    .end local v16           #mimetype:Ljava/lang/String;
    .end local v18           #path:Landroid/net/Uri;
    .end local v20           #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_21a
    new-instance v15, Landroid/content/Intent;

    const-string v21, "android.lge.lgdrm.action.DRM_PROCESS_RESULT"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1146
    .restart local v15       #intent:Landroid/content/Intent;
    const-string v21, "android.lge.lgdrm.extra.WAIT_RESULT"

    move-object v0, v15

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1147
    const-string v21, "android.lge.lgdrm.extra.WAIT_TYPE"

    move-object v0, v15

    move-object/from16 v1, v21

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1148
    const-string v21, "android.lge.lgdrm.extra.CALLER"

    const/16 v22, 0x1

    aget-object v22, v9, v22

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    if-eqz p4, :cond_1ce

    .line 1151
    const-string v21, "android.lge.lgdrm.extra.FILE_NAME"

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1ce

    .line 1167
    :cond_254
    :try_start_254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_260} :catch_1ee

    goto/16 :goto_42

    .line 1122
    :pswitch_data_262
    .packed-switch 0x1
        :pswitch_1f6
        :pswitch_1ff
        :pswitch_208
        :pswitch_211
    .end packed-switch
.end method

.method private setFailInfo(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "failReason"
    .parameter "errorMsg"
    .parameter "redirectURL"

    .prologue
    .line 892
    iput p1, p0, Landroid/lge/lgdrm/DrmObjectSession;->failReason:I

    .line 893
    iput-object p2, p0, Landroid/lge/lgdrm/DrmObjectSession;->errorMsg:Ljava/lang/String;

    .line 894
    iput-object p3, p0, Landroid/lge/lgdrm/DrmObjectSession;->redirectURL:Ljava/lang/String;

    .line 895
    return-void
.end method

.method private setNextRequest(IIILjava/lang/String;[B)I
    .registers 7
    .parameter "session"
    .parameter "requestType"
    .parameter "httpMethod"
    .parameter "url"
    .parameter "data"

    .prologue
    .line 925
    iput p1, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 928
    new-instance v0, Landroid/lge/lgdrm/DrmDldRequest;

    invoke-direct {v0}, Landroid/lge/lgdrm/DrmDldRequest;-><init>()V

    iput-object v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    .line 929
    iget-object v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    if-nez v0, :cond_f

    .line 931
    const/4 v0, -0x1

    .line 939
    :goto_e
    return v0

    .line 934
    :cond_f
    iget-object v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    iput p2, v0, Landroid/lge/lgdrm/DrmDldRequest;->requestType:I

    .line 935
    iget-object v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    iput p3, v0, Landroid/lge/lgdrm/DrmDldRequest;->httpMethod:I

    .line 936
    iget-object v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    iput-object p4, v0, Landroid/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    .line 937
    iget-object v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    iput-object p5, v0, Landroid/lge/lgdrm/DrmDldRequest;->data:[B

    .line 939
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private setStoredFilename(Ljava/lang/String;)V
    .registers 2
    .parameter "filename"

    .prologue
    .line 904
    iput-object p1, p0, Landroid/lge/lgdrm/DrmObjectSession;->storedFilename:Ljava/lang/String;

    .line 905
    return-void
.end method

.method private startDldClient()I
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 954
    iget v3, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_19

    move v1, v6

    .line 956
    .local v1, downloadAgent:I
    :goto_9
    new-instance v2, Landroid/lge/lgdrm/DrmObjectSession;

    iget-object v3, p0, Landroid/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    iget v4, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSession:I

    invoke-direct {v2, v1, v3, v4}, Landroid/lge/lgdrm/DrmObjectSession;-><init>(ILandroid/content/Context;I)V

    .line 957
    .local v2, session:Landroid/lge/lgdrm/DrmObjectSession;
    if-nez v2, :cond_1c

    .line 960
    invoke-virtual {p0, v6}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    move v3, v7

    .line 986
    :goto_18
    return v3

    .line 954
    .end local v1           #downloadAgent:I
    .end local v2           #session:Landroid/lge/lgdrm/DrmObjectSession;
    :cond_19
    const/4 v3, 0x4

    move v1, v3

    goto :goto_9

    .line 968
    .restart local v1       #downloadAgent:I
    .restart local v2       #session:Landroid/lge/lgdrm/DrmObjectSession;
    :cond_1c
    new-instance v0, Landroid/lge/lgdrm/DrmDldClient;

    iget-object v3, p0, Landroid/lge/lgdrm/DrmObjectSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    iget-object v4, p0, Landroid/lge/lgdrm/DrmObjectSession;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4}, Landroid/lge/lgdrm/DrmDldClient;-><init>(Landroid/lge/lgdrm/DrmObjectSession;Landroid/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V

    .line 969
    .local v0, dldClient:Landroid/lge/lgdrm/DrmDldClient;
    if-nez v0, :cond_2c

    .line 972
    invoke-virtual {p0, v6}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    move v3, v7

    .line 973
    goto :goto_18

    .line 977
    :cond_2c
    iput v5, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 978
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/lge/lgdrm/DrmObjectSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    .line 981
    invoke-virtual {v0}, Landroid/lge/lgdrm/DrmDldClient;->start()V

    .line 984
    iput-boolean v5, p0, Landroid/lge/lgdrm/DrmObjectSession;->validSession:Z

    move v3, v5

    .line 986
    goto :goto_18
.end method


# virtual methods
.method public destroySession(I)V
    .registers 5
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 344
    if-ltz p1, :cond_6

    const/4 v0, 0x3

    if-le p1, v0, :cond_e

    .line 346
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid reason"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_e
    if-nez p1, :cond_11

    .line 370
    :goto_10
    return-void

    .line 355
    :cond_11
    iput-boolean v2, p0, Landroid/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 356
    iget v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-eqz v0, :cond_23

    .line 359
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 367
    :cond_1c
    :goto_1c
    iput v2, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 368
    iput v2, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    .line 369
    iput v2, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeRequestHandle:I

    goto :goto_10

    .line 361
    :cond_23
    iget v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSession:I

    if-eqz v0, :cond_1c

    .line 364
    iget v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSession:I

    invoke-direct {p0, v0, p1}, Landroid/lge/lgdrm/DrmObjectSession;->nativeDestroySession(II)V

    goto :goto_1c
.end method

.method protected finalize()V
    .registers 3

    .prologue
    const-string v1, "DrmObjSes"

    .line 867
    iget v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-eqz v0, :cond_13

    .line 870
    const-string v0, "DrmObjSes"

    const-string v0, "finalize() : There still exists valid processing handle. Check impl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .line 879
    :cond_12
    :goto_12
    return-void

    .line 873
    :cond_13
    iget v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSession:I

    if-eqz v0, :cond_12

    .line 876
    const-string v0, "DrmObjSes"

    const-string v0, "finalize() : There still exists valid session. Check impl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_12
.end method

.method public getFailInfo(I)Ljava/lang/String;
    .registers 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 768
    iget-boolean v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->bEndError:Z

    if-nez v0, :cond_c

    .line 770
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No error was occurred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_c
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 775
    iget-object v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->errorMsg:Ljava/lang/String;

    .line 779
    :goto_11
    return-object v0

    .line 777
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    .line 779
    iget-object v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->redirectURL:Ljava/lang/String;

    goto :goto_11

    .line 783
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFailReason()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 743
    iget-boolean v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->bEndError:Z

    if-nez v0, :cond_c

    .line 745
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No error was occurred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_c
    iget v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->failReason:I

    return v0
.end method

.method public getNextRequest()Landroid/lge/lgdrm/DrmDldRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    .line 810
    .local v0, request:Landroid/lge/lgdrm/DrmDldRequest;
    iget-boolean v1, p0, Landroid/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_e

    .line 812
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 814
    :cond_e
    if-nez v0, :cond_18

    .line 816
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not exist next message"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 820
    :cond_18
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/lge/lgdrm/DrmObjectSession;->nextRequest:Landroid/lge/lgdrm/DrmDldRequest;

    .line 821
    return-object v0
.end method

.method public getStoredFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 794
    iget-object v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->storedFilename:Ljava/lang/String;

    return-object v0
.end method

.method public isValidSession()Z
    .registers 2

    .prologue
    .line 326
    iget-boolean v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->validSession:Z

    return v0
.end method

.method public processEnd(ILandroid/content/ComponentName;)I
    .registers 9
    .parameter "userResponse"
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, intentReceiver:Ljava/lang/String;
    iget v2, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v2, :cond_f

    .line 658
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Init was not called successfully"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 660
    :cond_f
    if-lt p1, v5, :cond_14

    const/4 v2, 0x3

    if-le p1, v2, :cond_1c

    .line 662
    :cond_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid userResponse"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 664
    :cond_1c
    iget-boolean v2, p0, Landroid/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v2, :cond_2a

    if-eq p1, v5, :cond_2a

    .line 667
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid userResponse. Only permit PROC_RESP_CANCEL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 669
    :cond_2a
    if-eqz p2, :cond_4f

    .line 681
    iget-boolean v2, p0, Landroid/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    if-eqz v2, :cond_63

    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    :cond_4f
    :goto_4f
    iget v2, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    iget v3, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeRequestHandle:I

    invoke-direct {p0, v2, v3, p1, v0}, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessEnd(IIILjava/lang/String;)I

    move-result v1

    .line 698
    .local v1, retVal:I
    iput v4, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    .line 699
    iput v4, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeRequestHandle:I

    .line 700
    iput-boolean v4, p0, Landroid/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    .line 702
    const/4 v2, -0x1

    if-ne v1, v2, :cond_6b

    .line 704
    iput-boolean v5, p0, Landroid/lge/lgdrm/DrmObjectSession;->bEndError:Z

    .line 719
    :cond_62
    :goto_62
    return v1

    .line 687
    .end local v1           #retVal:I
    :cond_63
    const-string v2, "DrmObjSes"

    const-string v3, "processEnd() : Invalid resultReceiver. Setup only based on processStatus()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 706
    .restart local v1       #retVal:I
    :cond_6b
    const/4 v2, 0x4

    if-ne v1, v2, :cond_62

    .line 708
    iget v2, p0, Landroid/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_78

    iget v2, p0, Landroid/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_62

    .line 711
    :cond_78
    const/4 v1, 0x0

    .line 712
    invoke-direct {p0}, Landroid/lge/lgdrm/DrmObjectSession;->startDldClient()I

    move-result v2

    if-eqz v2, :cond_62

    .line 714
    const/4 v1, -0x1

    goto :goto_62
.end method

.method public processInit(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12
    .parameter "drmMimeType"
    .parameter "filename"
    .parameter "attribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 417
    const/4 v6, 0x0

    .line 419
    .local v6, nativeHnds:[I
    iget-boolean v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v0, :cond_e

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_e
    iget v1, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSession:I

    iget v5, p0, Landroid/lge/lgdrm/DrmObjectSession;->downloadAgent:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessInit(ILjava/lang/String;Ljava/lang/String;II)[I

    move-result-object v6

    .line 425
    if-eqz v6, :cond_32

    aget v0, v6, v7

    if-eqz v0, :cond_32

    .line 431
    iput v7, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSession:I

    .line 434
    aget v0, v6, v7

    iput v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    .line 435
    const/4 v0, 0x1

    aget v0, v6, v0

    iput v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    .line 436
    const/4 v0, 0x2

    aget v0, v6, v0

    iput v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeRequestHandle:I

    move v0, v7

    .line 440
    :goto_31
    return v0

    :cond_32
    const/4 v0, -0x1

    goto :goto_31
.end method

.method public processStatus()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 553
    iget-boolean v1, p0, Landroid/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_e

    .line 555
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    :cond_e
    iget v1, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v1, :cond_1a

    .line 559
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Init was not called successfully"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_1a
    iget v1, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v1}, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessStatus(I)I

    move-result v0

    .line 563
    .local v0, retVal:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    .line 565
    iput-boolean v2, p0, Landroid/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 568
    :cond_25
    if-eq v0, v3, :cond_2a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2d

    .line 570
    :cond_2a
    iput-boolean v3, p0, Landroid/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    .line 577
    :goto_2c
    return v0

    .line 574
    :cond_2d
    iput-boolean v2, p0, Landroid/lge/lgdrm/DrmObjectSession;->waitFlag:Z

    goto :goto_2c
.end method

.method public processUpdate([BI)I
    .registers 4
    .parameter "buf"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/lge/lgdrm/DrmObjectSession;->processUpdate([BII)I

    move-result v0

    return v0
.end method

.method public processUpdate([BII)I
    .registers 7
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 494
    iget-boolean v1, p0, Landroid/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v1, :cond_c

    .line 496
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_c
    iget v1, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v1, :cond_18

    .line 500
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Init was not called successfully"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :cond_18
    if-nez p1, :cond_22

    .line 504
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter buf is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_22
    if-ltz p3, :cond_27

    array-length v1, p1

    if-le p3, v1, :cond_2f

    .line 508
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_2f
    iget v1, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessUpdate(I[BII)I

    move-result v0

    .line 512
    .local v0, retVal:I
    if-eqz v0, :cond_3a

    .line 514
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/lge/lgdrm/DrmObjectSession;->validSession:Z

    .line 517
    :cond_3a
    return v0
.end method

.method public setContentSize(J)I
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 841
    iget-boolean v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->validSession:Z

    if-nez v0, :cond_c

    .line 843
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_c
    iget v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    if-nez v0, :cond_18

    .line 847
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Init was not called successfully"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_18
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_26

    .line 851
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_26
    iget v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeSLType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2d

    .line 856
    const/4 v0, 0x0

    .line 860
    :goto_2c
    return v0

    :cond_2d
    iget v0, p0, Landroid/lge/lgdrm/DrmObjectSession;->nativeProcessHandle:I

    invoke-direct {p0, v0, p1, p2}, Landroid/lge/lgdrm/DrmObjectSession;->nativeSetContentSize(IJ)I

    move-result v0

    goto :goto_2c
.end method
