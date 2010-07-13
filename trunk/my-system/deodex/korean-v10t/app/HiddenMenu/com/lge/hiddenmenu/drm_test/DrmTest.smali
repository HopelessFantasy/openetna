.class public Lcom/lge/hiddenmenu/drm_test/DrmTest;
.super Landroid/app/ListActivity;
.source "DrmTest.java"


# static fields
.field private static final SYSTEMID_PATH:Ljava/lang/String; = "/lgdrm/system.id"

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mDrmMessage:Ljava/lang/String;

.field private mDrmType:Ljava/lang/String;

.field private mHiddenMenu:[Ljava/lang/String;

.field private mMenuList:Ljava/util/ArrayList;

.field private mPhoneType:Ljava/lang/String;

.field private mTopMenu:[Ljava/lang/String;

.field private nDrmKeyCode:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 37
    const-string v0, "DrmHidden"

    iput-object v0, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->TAG:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mPhoneType:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmType:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmMessage:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->nDrmKeyCode:I

    .line 46
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DRM Cert Check"

    aput-object v1, v0, v2

    const-string v1, "DRM Cert Info"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mTopMenu:[Ljava/lang/String;

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Secure Clock"

    aput-object v1, v0, v2

    const-string v1, "System ID(IMEI)"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mHiddenMenu:[Ljava/lang/String;

    return-void
.end method

.method private getCertInfo()V
    .registers 5

    .prologue
    const-string v2, "FAIL"

    const-string v2, "DrmHidden"

    .line 227
    const/4 v2, 0x2

    :try_start_5
    invoke-static {v2}, Landroid/lge/lgdrm/DrmManager;->getCertificateInformation(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmType:Ljava/lang/String;

    .line 229
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/lge/lgdrm/DrmManager;->getCertificateInformation(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mPhoneType:Ljava/lang/String;

    .line 231
    iget-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmType:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mPhoneType:Ljava/lang/String;

    if-nez v2, :cond_26

    .line 233
    :cond_1a
    const-string v2, "DrmHidden"

    const-string v3, "getCertInfo() : no Cert Info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v2, "FAIL"

    iput-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmMessage:Ljava/lang/String;

    .line 270
    :cond_25
    :goto_25
    return-void

    .line 238
    :cond_26
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/lge/lgdrm/DrmManager;->manageCertificate(I)I

    move-result v1

    .line 240
    .local v1, retVal:I
    if-nez v1, :cond_4b

    .line 242
    const-string v2, "DrmHidden"

    const-string v3, "manageCertificate() : verify succeed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/lge/lgdrm/DrmManager;->manageCertificate(I)I

    move-result v1

    .line 244
    if-nez v1, :cond_46

    .line 245
    const-string v2, "R&D TEST"

    iput-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmMessage:Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_3f} :catch_40

    goto :goto_25

    .line 266
    .end local v1           #retVal:I
    :catch_40
    move-exception v2

    move-object v0, v2

    .line 268
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_25

    .line 247
    .end local v0           #e:Ljava/lang/SecurityException;
    .restart local v1       #retVal:I
    :cond_46
    :try_start_46
    const-string v2, "SUCCESS"

    iput-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmMessage:Ljava/lang/String;

    goto :goto_25

    .line 250
    :cond_4b
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5a

    .line 252
    const-string v2, "DrmHidden"

    const-string v3, "manageCertificate() : Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v2, "FAIL"

    iput-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmMessage:Ljava/lang/String;

    goto :goto_25

    .line 255
    :cond_5a
    const/4 v2, 0x3

    if-ne v1, v2, :cond_69

    .line 257
    const-string v2, "DrmHidden"

    const-string v3, "manageCertificate() : verify failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v2, "VERIFY"

    iput-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmMessage:Ljava/lang/String;

    goto :goto_25

    .line 260
    :cond_69
    const/4 v2, 0x4

    if-ne v1, v2, :cond_25

    .line 262
    const-string v2, "DrmHidden"

    const-string v3, "manageCertificate() : mismatch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v2, "MISMATCH"

    iput-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmMessage:Ljava/lang/String;
    :try_end_77
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_77} :catch_40

    goto :goto_25
.end method

.method private readSystemID()Ljava/lang/String;
    .registers 11

    .prologue
    const-string v8, "/lgdrm/system.id"

    .line 159
    const/4 v6, 0x0

    .line 160
    .local v6, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .line 161
    .local v0, buf:[B
    const/4 v1, -0x1

    .line 162
    .local v1, bufLen:I
    new-instance v3, Ljava/io/File;

    const-string v7, "/lgdrm/system.id"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 167
    :try_start_12
    new-instance v5, Ljava/io/FileInputStream;

    const-string v7, "/lgdrm/system.id"

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 169
    .local v5, in:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 170
    if-nez v0, :cond_26

    .line 172
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 173
    const/4 v7, 0x0

    .line 192
    .end local v5           #in:Ljava/io/FileInputStream;
    :goto_25
    return-object v7

    .line 176
    .restart local v5       #in:Ljava/io/FileInputStream;
    :cond_26
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 177
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_2d} :catch_4d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2d} :catch_53

    .line 188
    .end local v5           #in:Ljava/io/FileInputStream;
    :goto_2d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 189
    .local v4, imei:Ljava/lang/String;
    const-string v7, "DrmHidden"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imei="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object v6, v4

    .end local v4           #imei:Ljava/lang/String;
    :cond_4b
    move-object v7, v6

    .line 192
    goto :goto_25

    .line 179
    :catch_4d
    move-exception v7

    move-object v2, v7

    .line 181
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2d

    .line 183
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_53
    move-exception v7

    move-object v2, v7

    .line 185
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d
.end method

.method private selectMenuItem(I)V
    .registers 10
    .parameter "id"

    .prologue
    .line 114
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v2, intent:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 116
    .local v4, packageName2:Ljava/lang/String;
    const/4 v1, 0x0

    .line 118
    .local v1, className:Ljava/lang/String;
    packed-switch p1, :pswitch_data_aa

    .line 152
    :goto_a
    if-eqz v1, :cond_2b

    .line 153
    const-string v5, "com.lge.hiddenmenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/drm_test/DrmTest;->startActivity(Landroid/content/Intent;)V

    .line 156
    :cond_2b
    return-void

    .line 120
    :pswitch_2c
    const/4 v0, 0x0

    .line 121
    .local v0, certType:Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/hiddenmenu/drm_test/DrmTest;->verifyCertificates()Ljava/lang/String;

    move-result-object v0

    .line 122
    if-nez v0, :cond_39

    .line 123
    const-string v5, "FAIL"

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/drm_test/DrmTest;->showMessage(Ljava/lang/String;)V

    goto :goto_a

    .line 125
    :cond_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUCCESS\n["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/drm_test/DrmTest;->showMessage(Ljava/lang/String;)V

    goto :goto_a

    .line 130
    .end local v0           #certType:Ljava/lang/String;
    :pswitch_56
    invoke-direct {p0}, Lcom/lge/hiddenmenu/drm_test/DrmTest;->getCertInfo()V

    .line 131
    const-string v5, "DrmHidden"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " drmType= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " phoneType= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mPhoneType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v5, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmMessage:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mDrmType:Ljava/lang/String;

    iget-object v7, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mPhoneType:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Lcom/lge/hiddenmenu/drm_test/DrmTest;->showCertInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 136
    :pswitch_96
    const-string v4, "com.lge.hiddenmenu.drm_test"

    .line 137
    const-string v1, "DrmSecureClock"

    .line 138
    goto/16 :goto_a

    .line 141
    :pswitch_9c
    const/4 v3, 0x0

    .line 142
    .local v3, msg:Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/hiddenmenu/drm_test/DrmTest;->readSystemID()Ljava/lang/String;

    move-result-object v3

    .line 143
    if-nez v3, :cond_a5

    .line 144
    const-string v3, "Default IMEI"

    .line 146
    :cond_a5
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/drm_test/DrmTest;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 118
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_56
        :pswitch_96
        :pswitch_9c
    .end packed-switch
.end method

.method private verifyCertificates()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 196
    const/4 v0, 0x0

    .line 199
    .local v0, certType:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_3
    invoke-static {v3}, Landroid/lge/lgdrm/DrmManager;->manageCertificate(I)I

    move-result v2

    .line 200
    .local v2, retVal:I
    if-eqz v2, :cond_b

    move-object v3, v4

    .line 221
    .end local v2           #retVal:I
    :goto_a
    return-object v3

    .line 204
    .restart local v2       #retVal:I
    :cond_b
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/lge/lgdrm/DrmManager;->manageCertificate(I)I

    move-result v2

    .line 205
    if-nez v2, :cond_14

    move-object v3, v4

    .line 206
    goto :goto_a

    .line 209
    :cond_14
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/lge/lgdrm/DrmManager;->getCertificateInformation(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_3a

    .line 213
    const-string v3, "DrmHidden"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCertificateInformation() : Certificate type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_33} :catch_35

    move-object v3, v0

    .line 214
    goto :goto_a

    .line 217
    .end local v2           #retVal:I
    :catch_35
    move-exception v3

    move-object v1, v3

    .line 219
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_3a
    move-object v3, v0

    .line 221
    goto :goto_a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mMenuList:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mTopMenu:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 63
    iget-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mMenuList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mTopMenu:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 68
    :cond_1c
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mMenuList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 76
    iget-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/drm_test/DrmTest;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v3, "DrmHidden"

    .line 94
    const/4 v1, 0x7

    if-ne p1, v1, :cond_5a

    .line 95
    iget v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->nDrmKeyCode:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->nDrmKeyCode:I

    .line 96
    iget v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->nDrmKeyCode:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5a

    .line 97
    const-string v1, "DrmHidden"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mHiddenMenu:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    iget-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mHiddenMenu:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5a

    .line 99
    iget-object v1, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mHiddenMenu:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 100
    const-string v1, "DrmHidden"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item added = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/drm_test/DrmTest;->mHiddenMenu:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 105
    .end local v0           #i:I
    :cond_5a
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
    .line 110
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/drm_test/DrmTest;->selectMenuItem(I)V

    .line 111
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 82
    return-void
.end method

.method public showCertInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "drmResult"
    .parameter "drmType"
    .parameter "phoneType"

    .prologue
    const/4 v4, 0x0

    .line 283
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 284
    .local v1, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030008

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, certInfoView:Landroid/view/View;
    const v2, 0x7f07001c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "[DRM TYPE]"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const v2, 0x7f07001d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    const v2, 0x7f07001e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "[PHONE TYPE]"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const v2, 0x7f07001f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 296
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "sMessage"

    .prologue
    .line 273
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "CERT CHECK"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 278
    return-void
.end method
