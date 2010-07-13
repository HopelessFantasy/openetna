.class public Lcom/android/settings/SdCardSettings;
.super Landroid/app/Activity;
.source "SdCardSettings.java"


# instance fields
.field private mAvailableSize:Landroid/widget/TextView;

.field private mBadRemovalLayout:Landroid/view/View;

.field mFormatButtonHandler:Landroid/view/View$OnClickListener;

.field private mMassStorage:Landroid/widget/CheckBox;

.field mMassStorageListener:Landroid/view/View$OnClickListener;

.field private mMountService:Landroid/os/IMountService;

.field private mMountedLayout:Landroid/view/View;

.field private mReadOnlyStatus:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedLayout:Landroid/view/View;

.field private mScanningLayout:Landroid/view/View;

.field private mSharedLayout:Landroid/view/View;

.field private mStatus:I

.field private mTotalSize:Landroid/widget/TextView;

.field mUnmountButtonHandler:Landroid/view/View$OnClickListener;

.field private mUnmountedLayout:Landroid/view/View;

.field private mUsedSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 160
    new-instance v0, Lcom/android/settings/SdCardSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SdCardSettings$1;-><init>(Lcom/android/settings/SdCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/SdCardSettings;->mMassStorageListener:Landroid/view/View$OnClickListener;

    .line 169
    new-instance v0, Lcom/android/settings/SdCardSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SdCardSettings$2;-><init>(Lcom/android/settings/SdCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/SdCardSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v0, Lcom/android/settings/SdCardSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SdCardSettings$3;-><init>(Lcom/android/settings/SdCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/SdCardSettings;->mUnmountButtonHandler:Landroid/view/View$OnClickListener;

    .line 185
    new-instance v0, Lcom/android/settings/SdCardSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/SdCardSettings$4;-><init>(Lcom/android/settings/SdCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/SdCardSettings;->mFormatButtonHandler:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SdCardSettings;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/SdCardSettings;->mMassStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SdCardSettings;)Landroid/os/IMountService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/SdCardSettings;->mMountService:Landroid/os/IMountService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SdCardSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SdCardSettings;->update()V

    return-void
.end method

.method private formatSize(J)Ljava/lang/String;
    .registers 4
    .parameter "size"

    .prologue
    .line 157
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setLayout(Landroid/view/View;)V
    .registers 6
    .parameter "layout"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/settings/SdCardSettings;->mRemovedLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/SdCardSettings;->mRemovedLayout:Landroid/view/View;

    if-ne p1, v1, :cond_40

    move v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/SdCardSettings;->mMountedLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/SdCardSettings;->mMountedLayout:Landroid/view/View;

    if-ne p1, v1, :cond_42

    move v1, v2

    :goto_14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/SdCardSettings;->mUnmountedLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/SdCardSettings;->mUnmountedLayout:Landroid/view/View;

    if-ne p1, v1, :cond_44

    move v1, v2

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/SdCardSettings;->mScanningLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/SdCardSettings;->mScanningLayout:Landroid/view/View;

    if-ne p1, v1, :cond_46

    move v1, v2

    :goto_28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/SdCardSettings;->mSharedLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/SdCardSettings;->mSharedLayout:Landroid/view/View;

    if-ne p1, v1, :cond_48

    move v1, v2

    :goto_32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/SdCardSettings;->mBadRemovalLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/SdCardSettings;->mBadRemovalLayout:Landroid/view/View;

    if-ne p1, v1, :cond_4a

    move v1, v2

    :goto_3c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void

    :cond_40
    move v1, v3

    .line 97
    goto :goto_a

    :cond_42
    move v1, v3

    .line 98
    goto :goto_14

    :cond_44
    move v1, v3

    .line 99
    goto :goto_1e

    :cond_46
    move v1, v3

    .line 100
    goto :goto_28

    :cond_48
    move v1, v3

    .line 101
    goto :goto_32

    :cond_4a
    move v1, v3

    .line 102
    goto :goto_3c
.end method

.method private update()V
    .registers 20

    .prologue
    .line 107
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SdCardSettings;->mMassStorage:Landroid/widget/CheckBox;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SdCardSettings;->mMountService:Landroid/os/IMountService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/os/IMountService;->getMassStorageEnabled()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13b

    .line 111
    :goto_13
    const/4 v10, 0x0

    .line 112
    .local v10, scanVolume:Ljava/lang/String;
    const-string v16, "external"

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 114
    .local v11, scanning:Z
    if-eqz v11, :cond_2d

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SdCardSettings;->mScanningLayout:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/SdCardSettings;->setLayout(Landroid/view/View;)V

    .line 154
    :cond_2c
    :goto_2c
    return-void

    .line 117
    :cond_2d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, status:Ljava/lang/String;
    const/4 v9, 0x0

    .line 120
    .local v9, readOnly:Z
    const-string v16, "mounted_ro"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_40

    .line 121
    const-string v13, "mounted"

    .line 122
    const/4 v9, 0x1

    .line 125
    :cond_40
    const-string v16, "mounted"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d3

    .line 127
    :try_start_4b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 128
    .local v8, path:Ljava/io/File;
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 129
    .local v12, stat:Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v5, v0

    .line 130
    .local v5, blockSize:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCount()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v14, v0

    .line 131
    .local v14, totalBlocks:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v3, v0

    .line 133
    .local v3, availableBlocks:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SdCardSettings;->mTotalSize:Landroid/widget/TextView;

    move-object/from16 v16, v0

    mul-long v17, v14, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SdCardSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SdCardSettings;->mUsedSize:Landroid/widget/TextView;

    move-object/from16 v16, v0

    sub-long v17, v14, v3

    mul-long v17, v17, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SdCardSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SdCardSettings;->mAvailableSize:Landroid/widget/TextView;

    move-object/from16 v16, v0

    mul-long v17, v3, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SdCardSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_ae} :catch_ca

    .line 142
    .end local v3           #availableBlocks:J
    .end local v5           #blockSize:J
    .end local v8           #path:Ljava/io/File;
    .end local v12           #stat:Landroid/os/StatFs;
    .end local v14           #totalBlocks:J
    :goto_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SdCardSettings;->mReadOnlyStatus:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v9, :cond_d0

    const/16 v17, 0x0

    :goto_b8
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SdCardSettings;->mMountedLayout:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/SdCardSettings;->setLayout(Landroid/view/View;)V

    goto/16 :goto_2c

    .line 136
    :catch_ca
    move-exception v16

    move-object/from16 v7, v16

    .line 139
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v13, "removed"

    goto :goto_ae

    .line 142
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_d0
    const/16 v17, 0x8

    goto :goto_b8

    .line 144
    :cond_d3
    const-string v16, "unmounted"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_ed

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SdCardSettings;->mUnmountedLayout:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/SdCardSettings;->setLayout(Landroid/view/View;)V

    goto/16 :goto_2c

    .line 146
    :cond_ed
    const-string v16, "removed"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_107

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SdCardSettings;->mRemovedLayout:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/SdCardSettings;->setLayout(Landroid/view/View;)V

    goto/16 :goto_2c

    .line 148
    :cond_107
    const-string v16, "shared"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_121

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SdCardSettings;->mSharedLayout:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/SdCardSettings;->setLayout(Landroid/view/View;)V

    goto/16 :goto_2c

    .line 150
    :cond_121
    const-string v16, "bad_removal"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2c

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SdCardSettings;->mBadRemovalLayout:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/SdCardSettings;->setLayout(Landroid/view/View;)V

    goto/16 :goto_2c

    .line 108
    .end local v9           #readOnly:Z
    .end local v10           #scanVolume:Ljava/lang/String;
    .end local v11           #scanning:Z
    .end local v13           #status:Ljava/lang/String;
    :catch_13b
    move-exception v16

    goto/16 :goto_13
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v3, 0x7f030034

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->setContentView(I)V

    .line 48
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMountService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SdCardSettings;->mMountService:Landroid/os/IMountService;

    .line 50
    const v3, 0x7f0a00be

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SdCardSettings;->mRemovedLayout:Landroid/view/View;

    .line 51
    const v3, 0x7f0a00b6

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SdCardSettings;->mMountedLayout:Landroid/view/View;

    .line 52
    const v3, 0x7f0a00c0

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SdCardSettings;->mUnmountedLayout:Landroid/view/View;

    .line 53
    const v3, 0x7f0a00bd

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SdCardSettings;->mScanningLayout:Landroid/view/View;

    .line 54
    const v3, 0x7f0a00bf

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SdCardSettings;->mSharedLayout:Landroid/view/View;

    .line 55
    const v3, 0x7f0a00c1

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SdCardSettings;->mBadRemovalLayout:Landroid/view/View;

    .line 56
    const v3, 0x7f0a00b7

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SdCardSettings;->mReadOnlyStatus:Landroid/view/View;

    .line 58
    const v3, 0x7f0a00b5

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/SdCardSettings;->mMassStorage:Landroid/widget/CheckBox;

    .line 59
    iget-object v3, p0, Lcom/android/settings/SdCardSettings;->mMassStorage:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/SdCardSettings;->mMassStorageListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v3, 0x7f0a00b8

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 62
    .local v2, unmountButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/settings/SdCardSettings;->mUnmountButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v3, 0x7f0a00b9

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    .local v0, formatButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/settings/SdCardSettings;->mFormatButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v3, 0x7f0a00ba

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/SdCardSettings;->mTotalSize:Landroid/widget/TextView;

    .line 68
    const v3, 0x7f0a00bb

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/SdCardSettings;->mUsedSize:Landroid/widget/TextView;

    .line 69
    const v3, 0x7f0a00bc

    invoke-virtual {p0, v3}, Lcom/android/settings/SdCardSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/SdCardSettings;->mAvailableSize:Landroid/widget/TextView;

    .line 72
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v3, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v3, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/android/settings/SdCardSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/SdCardSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/SdCardSettings;->update()V

    .line 94
    return-void
.end method
