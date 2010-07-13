.class public Lcom/android/mms/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# static fields
.field private static final DRM_TEMP_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "DrmUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-string v0, "content://mms/drm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static cleanupStorage(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, v2, v2}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public static getNewRightbyActiveURL(Landroid/lge/lgdrm/DrmContentSession;)I
    .registers 4
    .parameter "session"

    .prologue
    .line 217
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.drm.DrmProcessResultActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v0, cn:Landroid/content/ComponentName;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/lge/lgdrm/DrmContentSession;->obtainNewRight(ILandroid/content/ComponentName;)I

    move-result v1

    return v1
.end method

.method public static getPermission(Landroid/lge/lgdrm/DrmContent;)I
    .registers 3
    .parameter "content"

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, permission:I
    if-nez p0, :cond_5

    .line 145
    const/4 v1, 0x0

    .line 164
    :goto_4
    return v1

    .line 148
    :cond_5
    invoke-virtual {p0}, Landroid/lge/lgdrm/DrmContent;->getContentType()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    :goto_c
    move v1, v0

    .line 164
    goto :goto_4

    .line 153
    :pswitch_e
    const/4 v0, 0x2

    .line 154
    goto :goto_c

    .line 157
    :pswitch_10
    const/4 v0, 0x1

    .line 158
    goto :goto_c

    .line 160
    :pswitch_12
    const/4 v0, 0x4

    goto :goto_c

    .line 148
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_12
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public static getPermissionYN(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 6
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 115
    new-instance v2, Lcom/android/mms/drm/DrmUtils$1;

    invoke-direct {v2, p1}, Lcom/android/mms/drm/DrmUtils$1;-><init>(Ljava/lang/Runnable;)V

    .line 121
    .local v2, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/mms/drm/DrmUtils$2;

    invoke-direct {v1}, Lcom/android/mms/drm/DrmUtils$2;-><init>()V

    .line 127
    .local v1, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/mms/drm/DrmUtils$3;

    invoke-direct {v0}, Lcom/android/mms/drm/DrmUtils$3;-><init>()V

    .line 133
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    const v3, 0x7f070156

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2, v1, v0}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 137
    return-void
.end method

.method public static insert(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;)Landroid/net/Uri;
    .registers 11
    .parameter "context"
    .parameter "drmObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v8, "DrmUtils"

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/mms/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {p0, v0, v5, v6}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 61
    .local v4, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 63
    .local v3, os:Ljava/io/OutputStream;
    :try_start_13
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 64
    invoke-virtual {p1}, Lcom/android/mms/drm/DrmWrapper;->getDecryptedData()[B

    move-result-object v1

    .line 65
    .local v1, data:[B
    if-eqz v1, :cond_20

    .line 66
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_31

    .line 70
    :cond_20
    if-eqz v3, :cond_25

    .line 72
    :try_start_22
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 75
    :cond_25
    :goto_25
    return-object v4

    .line 73
    :catch_26
    move-exception v2

    .line 74
    .local v2, e:Ljava/io/IOException;
    const-string v5, "DrmUtils"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    .line 70
    .end local v1           #data:[B
    .end local v2           #e:Ljava/io/IOException;
    :catchall_31
    move-exception v5

    if-eqz v3, :cond_37

    .line 72
    :try_start_34
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    .line 75
    :cond_37
    :goto_37
    throw v5

    .line 73
    :catch_38
    move-exception v2

    .line 74
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "DrmUtils"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37
.end method

.method public static isDrmObject(Ljava/lang/String;[B)Z
    .registers 12
    .parameter "contentType"
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "DrmUtils"

    .line 81
    const-string v5, "DrmUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDrmObject()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "application/vnd.oma.drm.dcf"

    .line 83
    .local v1, DRM_MIMETYPE_DCF_STRING:Ljava/lang/String;
    const-string v2, "application/vnd.oma.drm.message"

    .line 84
    .local v2, DRM_MIMETYPE_MESSAGE_STRING:Ljava/lang/String;
    const-string v0, "application/vnd.oma.drm.content"

    .line 86
    .local v0, DRM_MIMETYPE_CONTENT_STRING:Ljava/lang/String;
    if-nez p0, :cond_60

    .line 87
    const-string v5, "DrmUtils"

    const-string v5, "contentType == null"

    invoke-static {v7, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/16 v5, 0x200

    new-array v3, v5, [B

    .line 89
    .local v3, buf:[B
    const/4 v4, 0x0

    .line 91
    .local v4, retVal:I
    array-length v5, p1

    invoke-static {v3, v8, p1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-static {v3}, Landroid/lge/lgdrm/DrmManager;->getObjectDrmType([B)I

    move-result v4

    .line 94
    if-eq v4, v9, :cond_46

    const/4 v5, 0x2

    if-eq v4, v5, :cond_46

    const/4 v5, 0x3

    if-eq v4, v5, :cond_46

    const/4 v5, 0x4

    if-eq v4, v5, :cond_46

    const/4 v5, 0x7

    if-ne v4, v5, :cond_8c

    .line 99
    :cond_46
    const-string v5, "DrmUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRM File retVal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v9

    .line 110
    .end local v3           #buf:[B
    .end local v4           #retVal:I
    :goto_5f
    return v5

    .line 102
    :cond_60
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_72

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_72

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 105
    :cond_72
    const-string v5, "DrmUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRM File contentType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v9

    .line 106
    goto :goto_5f

    .line 109
    :cond_8c
    const-string v5, "DrmUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not DRM File contentType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    .line 110
    goto :goto_5f
.end method

.method public static obtainNewRight(Landroid/content/Context;Lcom/android/mms/model/MediaModel;)V
    .registers 8
    .parameter "context"
    .parameter "mm"

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v3

    .line 174
    .local v3, session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v3, :cond_16

    .line 177
    const v4, 0x7f070155

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 214
    .end local v3           #session:Landroid/lge/lgdrm/DrmContentSession;
    :goto_15
    return-void

    .line 181
    .restart local v3       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_16
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 182
    .local v0, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_32

    .line 185
    const v4, 0x7f070155

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_15

    .line 210
    .end local v0           #content:Landroid/lge/lgdrm/DrmContent;
    .end local v3           #session:Landroid/lge/lgdrm/DrmContentSession;
    :catch_2c
    move-exception v4

    move-object v1, v4

    .line 212
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_15

    .line 190
    .end local v1           #e:Ljava/lang/SecurityException;
    .restart local v0       #content:Landroid/lge/lgdrm/DrmContent;
    .restart local v3       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_32
    :try_start_32
    invoke-static {v0}, Lcom/android/mms/drm/DrmUtils;->getPermission(Landroid/lge/lgdrm/DrmContent;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v2

    .line 191
    .local v2, retVal:I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_47

    .line 193
    new-instance v4, Lcom/android/mms/drm/DrmUtils$4;

    invoke-direct {v4, v3, p0}, Lcom/android/mms/drm/DrmUtils$4;-><init>(Landroid/lge/lgdrm/DrmContentSession;Landroid/content/Context;)V

    invoke-static {p0, v4}, Lcom/android/mms/drm/DrmUtils;->getPermissionYN(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_15

    .line 206
    :cond_47
    const-string v4, "DrmUtils"

    const-string v5, "judgeRight(false) : has valid right"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_4e} :catch_2c

    goto :goto_15
.end method
