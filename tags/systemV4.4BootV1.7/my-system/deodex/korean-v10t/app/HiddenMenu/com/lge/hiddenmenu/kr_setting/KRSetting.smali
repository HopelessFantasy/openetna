.class public Lcom/lge/hiddenmenu/kr_setting/KRSetting;
.super Landroid/app/ListActivity;
.source "KRSetting.java"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field private mKRSettingMMSFlag:Z

.field private mKRSettingSyncFlag:Z

.field private mKRSettingWAPFlag:Z

.field private mSettingTimer:Landroid/os/CountDownTimer;

.field private mTBSettingDlg:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mKRSettingWAPFlag:Z

    .line 53
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mKRSettingMMSFlag:Z

    .line 54
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mKRSettingSyncFlag:Z

    return-void
.end method

.method private SetTestBedMMSSetting()V
    .registers 14

    .prologue
    .line 252
    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "name"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "apn"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "type"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "mcc"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 258
    .local v3, cursor:Landroid/database/Cursor;
    const-string v9, "name"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 259
    .local v7, nameColumn:I
    const-string v9, "apn"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 260
    .local v1, apnColumn:I
    const-string v9, "type"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 261
    .local v2, apntypeColumn:I
    const-string v9, "mcc"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 263
    .local v5, mccColumn:I
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eqz v9, :cond_80

    .line 264
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
    :goto_40
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_80

    .line 267
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, name:Ljava/lang/String;
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, apn:Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, type:Ljava/lang/String;
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, mcc:Ljava/lang/String;
    const-string v9, "LGE MMS AUTO"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    const-string v9, "qe"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    const-string v9, "mms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    const-string v9, "450"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 274
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mKRSettingMMSFlag:Z

    .line 275
    const-string v9, "KRSetting"

    const-string v10, "mKRSettingMMSFlag == False!! Do not add MMS TB KR Setting for this"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0           #apn:Ljava/lang/String;
    .end local v4           #mcc:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    :cond_80
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 290
    iget-boolean v9, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mKRSettingMMSFlag:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8b

    .line 291
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->addMMSSettings()V

    .line 293
    :cond_8b
    return-void

    .line 280
    .restart local v0       #apn:Ljava/lang/String;
    .restart local v4       #mcc:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v8       #type:Ljava/lang/String;
    :cond_8c
    const-string v9, "KRSetting"

    const-string v10, "mKRSettingMMSFlag == True!! Add a MMS KB Setting"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_40
.end method

.method private SetTestBedWAPSetting()V
    .registers 14

    .prologue
    .line 208
    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "name"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "apn"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "type"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "mcc"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 214
    .local v3, cursor:Landroid/database/Cursor;
    const-string v9, "name"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 215
    .local v7, nameColumn:I
    const-string v9, "apn"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, apnColumn:I
    const-string v9, "type"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 217
    .local v2, apntypeColumn:I
    const-string v9, "mcc"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 219
    .local v5, mccColumn:I
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eqz v9, :cond_80

    .line 220
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 222
    :goto_40
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_80

    .line 223
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, name:Ljava/lang/String;
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, apn:Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, type:Ljava/lang/String;
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, mcc:Ljava/lang/String;
    const-string v9, "LGE DEFAULT AUTO"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    const-string v9, "tbt"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    const-string v9, "default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    const-string v9, "450"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 230
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mKRSettingWAPFlag:Z

    .line 231
    const-string v9, "KRSetting"

    const-string v10, "mKRSettingWAPFlag == False!! Do not add WAP TB KR Setting for this"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v0           #apn:Ljava/lang/String;
    .end local v4           #mcc:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    :cond_80
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 246
    iget-boolean v9, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mKRSettingWAPFlag:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8b

    .line 247
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->addWapSettings()V

    .line 249
    :cond_8b
    return-void

    .line 236
    .restart local v0       #apn:Ljava/lang/String;
    .restart local v4       #mcc:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v8       #type:Ljava/lang/String;
    :cond_8c
    const-string v9, "KRSetting"

    const-string v10, "mKRSettingWAPFlag == True!! Add a WAP KB Setting"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_40
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->setTestBedSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mTBSettingDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mKRSettingWAPFlag:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mKRSettingMMSFlag:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mKRSettingSyncFlag:Z

    return v0
.end method

.method static synthetic access$500(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->resetHandset()V

    return-void
.end method

.method private inflateView(I)Landroid/view/View;
    .registers 4
    .parameter "resource"

    .prologue
    .line 386
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 388
    .local v0, vi:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private removeExistingAPNs()V
    .registers 12

    .prologue
    const/4 v9, 0x0

    const-string v10, "KRSetting"

    .line 177
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "name"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "apn"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "type"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "mcc"

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6, v9, v9}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 183
    .local v0, cursor:Landroid/database/Cursor;
    const-string v5, "KRSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APN Counts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3d
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_93

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, deleteUrl:Landroid/net/Uri;
    const/4 v2, -0x1

    .line 188
    .local v2, deletedRow:I
    add-int/lit8 v3, v4, 0x1

    .line 189
    .local v3, deletingIndex:I
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v3

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 192
    const-string v5, "KRSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteUrl "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v5, "KRSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete APN at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DeletedRow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 197
    .end local v1           #deleteUrl:Landroid/net/Uri;
    .end local v2           #deletedRow:I
    .end local v3           #deletingIndex:I
    :cond_93
    return-void
.end method

.method private resetHandset()V
    .registers 4

    .prologue
    .line 201
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 202
    .local v0, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 203
    const-string v1, "KRSetting"

    const-string v2, "SetKRSettingReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v1, "Set KRSetting Reset"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private selectMenuItem(I)V
    .registers 8
    .parameter "id"

    .prologue
    .line 89
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 91
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 93
    .local v2, packageName2:Ljava/lang/String;
    packed-switch p1, :pswitch_data_42

    .line 116
    :goto_a
    return-void

    .line 95
    :pswitch_b
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02003a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080208

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080209

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08020b

    new-instance v5, Lcom/lge/hiddenmenu/kr_setting/KRSetting$2;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting$2;-><init>(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08020c

    new-instance v5, Lcom/lge/hiddenmenu/kr_setting/KRSetting$1;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting$1;-><init>(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_a

    .line 93
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

.method private setTestBedSettings()V
    .registers 10

    .prologue
    const/4 v2, 0x1

    .line 119
    const/16 v6, 0x1b58

    .line 122
    .local v6, mSettingDlgtime:I
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, title:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, message:Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mTBSettingDlg:Landroid/app/ProgressDialog;

    .line 127
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mTBSettingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mTBSettingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mTBSettingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 130
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mTBSettingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 131
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mTBSettingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 134
    new-instance v0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;

    int-to-long v2, v6

    int-to-long v4, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;-><init>(Lcom/lge/hiddenmenu/kr_setting/KRSetting;JJ)V

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mSettingTimer:Landroid/os/CountDownTimer;

    .line 164
    invoke-direct {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->removeExistingAPNs()V

    .line 167
    invoke-direct {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->SetTestBedWAPSetting()V

    .line 170
    invoke-direct {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->SetTestBedMMSSetting()V

    .line 174
    return-void
.end method


# virtual methods
.method public addMMSSettings()V
    .registers 13

    .prologue
    const/4 v10, 0x0

    const-string v11, "lge"

    const-string v9, ""

    .line 335
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://telephony/carriers"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 339
    .local v1, mUri:Landroid/net/Uri;
    const-string v4, "LGE MMS AUTO"

    .line 340
    .local v4, name:Ljava/lang/String;
    const-string v0, "qe"

    .line 341
    .local v0, apn:Ljava/lang/String;
    const-string v2, "450"

    .line 342
    .local v2, mcc:Ljava/lang/String;
    const-string v3, "00"

    .line 344
    .local v3, mnc:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v6, "apn"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v6, "proxy"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v6, "port"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v6, "mmsproxy"

    const-string v7, "203.229.247.28"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v6, "mmsport"

    const-string v7, "8000"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v6, "user"

    const-string v7, "lge"

    invoke-virtual {v5, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v6, "server"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v6, "password"

    const-string v7, "lge"

    invoke-virtual {v5, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v6, "mmsc"

    const-string v7, "http://203.229.247.29/lgeqe"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v6, "type"

    const-string v7, "mms"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v6, "mcc"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v6, "mnc"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v6, "numeric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v6, "current"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    const-string v6, "preferapp"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v1, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method public addWapSettings()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const-string v9, ""

    .line 298
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://telephony/carriers"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 302
    .local v1, mUri:Landroid/net/Uri;
    const-string v4, "LGE DEFAULT AUTO"

    .line 303
    .local v4, name:Ljava/lang/String;
    const-string v0, "tbt"

    .line 304
    .local v0, apn:Ljava/lang/String;
    const-string v2, "450"

    .line 305
    .local v2, mcc:Ljava/lang/String;
    const-string v3, "00"

    .line 307
    .local v3, mnc:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 309
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v6, "apn"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v6, "proxy"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v6, "port"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v6, "mmsproxy"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v6, "mmsport"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v6, "user"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v6, "server"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v6, "password"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v6, "mmsc"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v6, "type"

    const-string v7, "default"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v6, "mcc"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v6, "mnc"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v6, "numeric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v6, "current"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v6, "preferapp"

    const-string v7, ""

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v1, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f06000f

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 63
    iget-object v0, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 76
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 77
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 80
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 85
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->selectMenuItem(I)V

    .line 86
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 69
    return-void
.end method

.method protected showToastPopup(Ljava/lang/String;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 372
    const v3, 0x7f030038

    invoke-direct {p0, v3}, Lcom/lge/hiddenmenu/kr_setting/KRSetting;->inflateView(I)Landroid/view/View;

    move-result-object v2

    .line 375
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0700e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 376
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 380
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 381
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 382
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 383
    return-void
.end method
