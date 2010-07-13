.class public Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;
.super Landroid/app/ListActivity;
.source "DrmSecureClock.java"


# static fields
.field private static final DRM_DUMMY_FILE:Ljava/lang/String; = "/data/lgdrm/0.dcf"

.field private static final SECCLK_OMA_OFFSET_PATH:Ljava/lang/String; = "/data/lgdrm/omasecclk.dat"

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu.drm_test"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mMenuList:Ljava/util/ArrayList;

.field private mTopMenu:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 45
    const-string v0, "DrmHidden"

    iput-object v0, p0, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Current DRM Time"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Set DRM Time"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Reset DRM Time"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->mTopMenu:[Ljava/lang/String;

    return-void
.end method

.method private getDrmTime()Ljava/lang/String;
    .registers 12

    .prologue
    const-string v8, "DrmHidden"

    const-string v8, "/data/lgdrm/0.dcf"

    .line 119
    const-string v0, ""

    .line 122
    .local v0, currTime:Ljava/lang/String;
    :try_start_6
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/lgdrm/0.dcf"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v4, dummy:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_16

    .line 124
    invoke-direct {p0}, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->makeContent()V

    .line 127
    :cond_16
    const-string v8, "/data/lgdrm/0.dcf"

    invoke-static {v8, p0}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v6

    .line 128
    .local v6, session:Landroid/lge/lgdrm/DrmContentSession;
    if-nez v6, :cond_27

    .line 130
    const-string v8, "DrmHidden"

    const-string v9, "createContentSession() : Fail"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 153
    .end local v0           #currTime:Ljava/lang/String;
    .end local v4           #dummy:Ljava/io/File;
    .end local v6           #session:Landroid/lge/lgdrm/DrmContentSession;
    .local v1, currTime:Ljava/lang/String;
    :goto_26
    return-object v1

    .line 134
    .end local v1           #currTime:Ljava/lang/String;
    .restart local v0       #currTime:Ljava/lang/String;
    .restart local v4       #dummy:Ljava/io/File;
    .restart local v6       #session:Landroid/lge/lgdrm/DrmContentSession;
    :cond_27
    invoke-virtual {v6}, Landroid/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v2

    .line 135
    .local v2, currentTime:J
    const-string v8, "DrmHidden"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "utc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 138
    .local v7, time:Landroid/text/format/Time;
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 141
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_52} :catch_55
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_6 .. :try_end_52} :catch_5b

    move-result-object v0

    .end local v2           #currentTime:J
    .end local v4           #dummy:Ljava/io/File;
    .end local v6           #session:Landroid/lge/lgdrm/DrmContentSession;
    .end local v7           #time:Landroid/text/format/Time;
    :goto_53
    move-object v1, v0

    .line 153
    .end local v0           #currTime:Ljava/lang/String;
    .restart local v1       #currTime:Ljava/lang/String;
    goto :goto_26

    .line 144
    .end local v1           #currTime:Ljava/lang/String;
    .restart local v0       #currTime:Ljava/lang/String;
    :catch_55
    move-exception v8

    move-object v5, v8

    .line 146
    .local v5, e:Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_53

    .line 148
    .end local v5           #e:Ljava/lang/SecurityException;
    :catch_5b
    move-exception v8

    move-object v5, v8

    .line 150
    .local v5, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual {v5}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto :goto_53
.end method

.method private makeContent()V
    .registers 10

    .prologue
    const-string v5, "/data/lgdrm/0.dcf"

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, buf:[B
    const/4 v1, -0x1

    .line 185
    .local v1, bufLen:I
    const/4 v3, 0x0

    .line 191
    .local v3, in:Ljava/io/InputStream;
    :try_start_5
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f05

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 193
    if-nez v0, :cond_1b

    .line 195
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 214
    :goto_1a
    return-void

    .line 199
    :cond_1b
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 200
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 203
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/data/lgdrm/0.dcf"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 204
    .local v4, out:Ljava/io/FileOutputStream;
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 205
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 207
    const-string v5, "/data/lgdrm/0.dcf"

    const/16 v6, 0x1b0

    const/4 v7, -0x1

    const/16 v8, 0xfa5

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_39} :catch_3a

    goto :goto_1a

    .line 209
    .end local v4           #out:Ljava/io/FileOutputStream;
    :catch_3a
    move-exception v5

    move-object v2, v5

    .line 211
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a
.end method

.method private selectMenuItem(I)V
    .registers 10
    .parameter "id"

    .prologue
    const-string v7, "/data/lgdrm/omasecclk.dat"

    .line 87
    packed-switch p1, :pswitch_data_6c

    .line 116
    :goto_5
    return-void

    .line 89
    :pswitch_6
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/lgdrm/omasecclk.dat"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, fTime:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 91
    invoke-direct {p0}, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->getDrmTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->showMessage(Ljava/lang/String;)V

    goto :goto_5

    .line 93
    :cond_1b
    const-string v4, "Not Synced or Error"

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->showMessage(Ljava/lang/String;)V

    goto :goto_5

    .line 98
    .end local v2           #fTime:Ljava/io/File;
    :pswitch_21
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/lgdrm/omasecclk.dat"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, fSet:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 101
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    div-int/lit16 v3, v4, 0x3e8

    .line 102
    .local v3, offset:I
    const-string v4, "DrmHidden"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timezone offset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v4, "/data/lgdrm/omasecclk.dat"

    int-to-long v4, v3

    invoke-direct {p0, v7, v4, v5}, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->writeSecureClockOffset(Ljava/lang/String;J)Z

    .line 104
    invoke-direct {p0}, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->getDrmTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->showMessage(Ljava/lang/String;)V

    goto :goto_5

    .line 108
    .end local v1           #fSet:Ljava/io/File;
    .end local v3           #offset:I
    :pswitch_5b
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/lgdrm/omasecclk.dat"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, fReset:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 110
    const-string v4, "Completed"

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->showMessage(Ljava/lang/String;)V

    goto :goto_5

    .line 87
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_21
        :pswitch_5b
    .end packed-switch
.end method

.method private writeSecureClockOffset(Ljava/lang/String;J)Z
    .registers 10
    .parameter "offsetPath"
    .parameter "offset"

    .prologue
    .line 158
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, offsetStr:Ljava/lang/String;
    const-string v3, "DrmHidden"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeSecureClockOffset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 162
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 164
    const/16 v3, 0x1b0

    const/4 v4, -0x1

    const/16 v5, 0xfa5

    invoke-static {p1, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_33} :catch_35
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_33} :catch_3c

    .line 165
    const/4 v3, 0x1

    .line 176
    .end local v1           #offsetStr:Ljava/lang/String;
    .end local v2           #out:Ljava/io/FileOutputStream;
    :goto_34
    return v3

    .line 167
    :catch_35
    move-exception v3

    move-object v0, v3

    .line 169
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 176
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_3a
    const/4 v3, 0x0

    goto :goto_34

    .line 171
    :catch_3c
    move-exception v3

    move-object v0, v3

    .line 173
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->mMenuList:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->mTopMenu:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 62
    iget-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->mMenuList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->mTopMenu:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 65
    :cond_1c
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->mMenuList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 68
    iget-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 83
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/drm_test/DrmSecureClock;->selectMenuItem(I)V

    .line 84
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 74
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "sMessage"

    .prologue
    .line 217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Secure Clock"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 222
    return-void
.end method
