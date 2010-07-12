.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$1;,
        Landroid/content/res/AssetManager$AssetInputStream;
    }
.end annotation


# static fields
.field public static final ACCESS_BUFFER:I = 0x3

.field public static final ACCESS_RANDOM:I = 0x1

.field public static final ACCESS_STREAMING:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field static final STYLE_ASSET_COOKIE:I = 0x2

.field static final STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final STYLE_DATA:I = 0x1

.field static final STYLE_DENSITY:I = 0x5

.field static final STYLE_NUM_ENTRIES:I = 0x6

.field static final STYLE_RESOURCE_ID:I = 0x3

.field static final STYLE_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z

.field private static final mOffsets:[J

.field private static final mSync:Ljava/lang/Object;

.field private static mSystem:Landroid/content/res/AssetManager;

.field private static final mValue:Landroid/util/TypedValue;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAssetDir:Ljava/lang/String;

.field private mNumRefs:I

.field private mObject:I

.field private mOpen:Z

.field private mStringBlocks:[Landroid/content/res/StringBlock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [J

    sput-object v0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 66
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/AssetManager;->mSystem:Landroid/content/res/AssetManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 73
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 74
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 86
    sget-object v0, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_e
    invoke-direct {p0}, Landroid/content/res/AssetManager;->init()V

    .line 89
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method private constructor <init>(Z)V
    .registers 4
    .parameter "isSystem"

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 73
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 74
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 104
    invoke-direct {p0}, Landroid/content/res/AssetManager;->init()V

    .line 106
    return-void
.end method

.method static synthetic access$100(Landroid/content/res/AssetManager;I)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getAssetLength(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Landroid/content/res/AssetManager;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->readAssetChar(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/res/AssetManager;I)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getAssetRemainingLength(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/res/AssetManager;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->destroyAsset(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/res/AssetManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/res/AssetManager;->decRefsLocked()V

    return-void
.end method

.method static synthetic access$700(Landroid/content/res/AssetManager;IJI)J
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->seekAsset(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Landroid/content/res/AssetManager;I[BII)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->readAsset(I[BII)I

    move-result v0

    return v0
.end method

.method static final native applyStyle(IIII[I[I[I)Z
.end method

.method static final native applyThemeStyle(IIZ)V
.end method

.method static final native copyTheme(II)V
.end method

.method private final decRefsLocked()V
    .registers 3

    .prologue
    .line 696
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 699
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    if-nez v0, :cond_d

    .line 700
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V

    .line 702
    :cond_d
    return-void
.end method

.method private final native deleteTheme(I)V
.end method

.method private final native destroy()V
.end method

.method private final native destroyAsset(I)V
.end method

.method static final native dumpTheme(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static ensureSystemAssets()V
    .registers 3

    .prologue
    .line 94
    sget-object v1, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_3
    sget-object v2, Landroid/content/res/AssetManager;->mSystem:Landroid/content/res/AssetManager;

    if-nez v2, :cond_13

    .line 96
    new-instance v0, Landroid/content/res/AssetManager;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/res/AssetManager;-><init>(Z)V

    .line 97
    .local v0, system:Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/content/res/AssetManager;->makeStringBlocks(Z)V

    .line 98
    sput-object v0, Landroid/content/res/AssetManager;->mSystem:Landroid/content/res/AssetManager;

    .line 100
    .end local v0           #system:Landroid/content/res/AssetManager;
    :cond_13
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2
.end method

.method private final native getArrayStringInfo(I)[I
.end method

.method private final native getArrayStringResource(I)[Ljava/lang/String;
.end method

.method public static final native getAssetAllocations()Ljava/lang/String;
.end method

.method private final native getAssetLength(I)J
.end method

.method private final native getAssetRemainingLength(I)J
.end method

.method public static final native getGlobalAssetCount()I
.end method

.method public static final native getGlobalAssetManagerCount()I
.end method

.method private final native getNativeStringBlock(I)I
.end method

.method private final native getStringBlockCount()I
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .registers 1

    .prologue
    .line 114
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 115
    sget-object v0, Landroid/content/res/AssetManager;->mSystem:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method private final native init()V
.end method

.method private final native loadResourceBagValue(IILandroid/util/TypedValue;Z)I
.end method

.method private final native loadResourceValue(ILandroid/util/TypedValue;Z)I
.end method

.method static final native loadThemeAttributeValue(IILandroid/util/TypedValue;Z)I
.end method

.method private final makeStringBlocks(Z)V
    .registers 9
    .parameter "copyFromSystem"

    .prologue
    .line 242
    if-eqz p1, :cond_22

    sget-object v3, Landroid/content/res/AssetManager;->mSystem:Landroid/content/res/AssetManager;

    iget-object v3, v3, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    array-length v3, v3

    move v2, v3

    .line 243
    .local v2, sysNum:I
    :goto_8
    invoke-direct {p0}, Landroid/content/res/AssetManager;->getStringBlockCount()I

    move-result v1

    .line 244
    .local v1, num:I
    new-array v3, v1, [Landroid/content/res/StringBlock;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v1, :cond_34

    .line 248
    if-ge v0, v2, :cond_25

    .line 249
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    sget-object v4, Landroid/content/res/AssetManager;->mSystem:Landroid/content/res/AssetManager;

    iget-object v4, v4, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 247
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 242
    .end local v0           #i:I
    .end local v1           #num:I
    .end local v2           #sysNum:I
    :cond_22
    const/4 v3, 0x0

    move v2, v3

    goto :goto_8

    .line 251
    .restart local v0       #i:I
    .restart local v1       #num:I
    .restart local v2       #sysNum:I
    :cond_25
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    new-instance v4, Landroid/content/res/StringBlock;

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->getNativeStringBlock(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/content/res/StringBlock;-><init>(IZ)V

    aput-object v4, v3, v0

    goto :goto_1f

    .line 254
    :cond_34
    return-void
.end method

.method private final native newTheme()I
.end method

.method private final native openAsset(Ljava/lang/String;I)I
.end method

.method private final native openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native openNonAssetNative(ILjava/lang/String;I)I
.end method

.method private final native openXmlAssetNative(ILjava/lang/String;)I
.end method

.method private final native readAsset(I[BII)I
.end method

.method private final native readAssetChar(I)I
.end method

.method private final native seekAsset(IJI)J
.end method


# virtual methods
.method public final native addAssetPath(Ljava/lang/String;)I
.end method

.method public close()V
    .registers 3

    .prologue
    .line 122
    sget-object v0, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v1, :cond_d

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 127
    invoke-direct {p0}, Landroid/content/res/AssetManager;->decRefsLocked()V

    .line 129
    :cond_d
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method final createTheme()I
    .registers 4

    .prologue
    .line 487
    sget-object v0, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_3
    iget-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v1, :cond_12

    .line 489
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 493
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1

    .line 491
    :cond_12
    :try_start_12
    iget v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 492
    invoke-direct {p0}, Landroid/content/res/AssetManager;->newTheme()I

    move-result v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_f

    return v1
.end method

.method final ensureStringBlocks()V
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_10

    .line 233
    sget-object v0, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_7
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v1, :cond_f

    .line 235
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks(Z)V

    .line 237
    :cond_f
    monitor-exit v0

    .line 239
    :cond_10
    return-void

    .line 237
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V

    .line 505
    return-void
.end method

.method final native getArrayIntResource(I)[I
.end method

.method final native getArraySize(I)I
.end method

.method public final native getCookieName(I)Ljava/lang/String;
.end method

.method public final native getLocales()[Ljava/lang/String;
.end method

.method final getPooledString(II)Ljava/lang/CharSequence;
    .registers 5
    .parameter "block"
    .parameter "id"

    .prologue
    .line 260
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method final getResourceBagText(II)Ljava/lang/CharSequence;
    .registers 8
    .parameter "ident"
    .parameter "bagEntryId"

    .prologue
    .line 155
    sget-object v2, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 156
    :try_start_3
    sget-object v1, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 157
    .local v1, tmpValue:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v1, v3}, Landroid/content/res/AssetManager;->loadResourceBagValue(IILandroid/util/TypedValue;Z)I

    move-result v0

    .line 158
    .local v0, block:I
    if-ltz v0, :cond_25

    .line 159
    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    .line 160
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v3, v3, v0

    iget v4, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v3, v4}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v3

    monitor-exit v2

    move-object v2, v3

    .line 165
    :goto_1d
    return-object v2

    .line 162
    :cond_1e
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    monitor-exit v2

    move-object v2, v3

    goto :goto_1d

    .line 164
    :cond_25
    monitor-exit v2

    .line 165
    const/4 v2, 0x0

    goto :goto_1d

    .line 164
    .end local v0           #block:I
    .end local v1           #tmpValue:Landroid/util/TypedValue;
    :catchall_28
    move-exception v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v3
.end method

.method final native getResourceEntryName(I)Ljava/lang/String;
.end method

.method final native getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final native getResourceName(I)Ljava/lang/String;
.end method

.method final native getResourcePackageName(I)Ljava/lang/String;
.end method

.method final getResourceStringArray(I)[Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringResource(I)[Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, retArray:[Ljava/lang/String;
    return-object v0
.end method

.method final getResourceText(I)Ljava/lang/CharSequence;
    .registers 7
    .parameter "ident"

    .prologue
    .line 137
    sget-object v2, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 138
    :try_start_3
    sget-object v1, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 139
    .local v1, tmpValue:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Landroid/content/res/AssetManager;->loadResourceValue(ILandroid/util/TypedValue;Z)I

    move-result v0

    .line 140
    .local v0, block:I
    if-ltz v0, :cond_25

    .line 141
    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    .line 142
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v3, v3, v0

    iget v4, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v3, v4}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v3

    monitor-exit v2

    move-object v2, v3

    .line 147
    :goto_1d
    return-object v2

    .line 144
    :cond_1e
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    monitor-exit v2

    move-object v2, v3

    goto :goto_1d

    .line 146
    :cond_25
    monitor-exit v2

    .line 147
    const/4 v2, 0x0

    goto :goto_1d

    .line 146
    .end local v0           #block:I
    .end local v1           #tmpValue:Landroid/util/TypedValue;
    :catchall_28
    move-exception v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v3
.end method

.method final getResourceTextArray(I)[Ljava/lang/CharSequence;
    .registers 11
    .parameter "id"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringInfo(I)[I

    move-result-object v5

    .line 201
    .local v5, rawInfoArray:[I
    array-length v6, v5

    .line 202
    .local v6, rawInfoArrayLen:I
    div-int/lit8 v3, v6, 0x2

    .line 205
    .local v3, infoArrayLen:I
    new-array v7, v3, [Ljava/lang/CharSequence;

    .line 206
    .local v7, retArray:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_b
    if-ge v1, v6, :cond_26

    .line 207
    aget v0, v5, v1

    .line 208
    .local v0, block:I
    add-int/lit8 v8, v1, 0x1

    aget v2, v5, v8

    .line 209
    .local v2, index:I
    if-ltz v2, :cond_24

    iget-object v8, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v8, v8, v0

    invoke-virtual {v8, v2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_1d
    aput-object v8, v7, v4

    .line 206
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 209
    :cond_24
    const/4 v8, 0x0

    goto :goto_1d

    .line 211
    .end local v0           #block:I
    .end local v2           #index:I
    :cond_26
    return-object v7
.end method

.method final native getResourceTypeName(I)Ljava/lang/String;
.end method

.method final getResourceValue(ILandroid/util/TypedValue;Z)Z
    .registers 8
    .parameter "ident"
    .parameter "outValue"
    .parameter "resolveRefs"

    .prologue
    const/4 v3, 0x1

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->loadResourceValue(ILandroid/util/TypedValue;Z)I

    move-result v0

    .line 184
    .local v0, block:I
    if-ltz v0, :cond_1c

    .line 185
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    move v1, v3

    .line 191
    :goto_d
    return v1

    .line 188
    :cond_e
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v1, v1, v0

    iget v2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move v1, v3

    .line 189
    goto :goto_d

    .line 191
    :cond_1c
    const/4 v1, 0x0

    goto :goto_d
.end method

.method final getThemeValue(IILandroid/util/TypedValue;Z)Z
    .registers 10
    .parameter "theme"
    .parameter "ident"
    .parameter "outValue"
    .parameter "resolveRefs"

    .prologue
    const/4 v4, 0x1

    .line 216
    invoke-static {p1, p2, p3, p4}, Landroid/content/res/AssetManager;->loadThemeAttributeValue(IILandroid/util/TypedValue;Z)I

    move-result v0

    .line 217
    .local v0, block:I
    if-ltz v0, :cond_21

    .line 218
    iget v2, p3, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_e

    move v2, v4

    .line 228
    :goto_d
    return v2

    .line 221
    :cond_e
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 222
    .local v1, blocks:[Landroid/content/res/StringBlock;
    if-nez v1, :cond_15

    .line 223
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 225
    :cond_15
    aget-object v2, v1, v0

    iget v3, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move v2, v4

    .line 226
    goto :goto_d

    .line 228
    .end local v1           #blocks:[Landroid/content/res/StringBlock;
    :cond_21
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public final native isUpToDate()Z
.end method

.method public final native list(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final open(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final open(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 7
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    sget-object v1, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_3
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_12

    .line 299
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v2

    .line 301
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openAsset(Ljava/lang/String;I)I

    move-result v0

    .line 302
    .local v0, asset:I
    if-eqz v0, :cond_26

    .line 303
    iget v2, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 304
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    monitor-exit v1

    return-object v2

    .line 306
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_f

    .line 307
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 9
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    sget-object v6, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 313
    :try_start_3
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_12

    .line 314
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :catchall_f
    move-exception v0

    monitor-exit v6
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 316
    :cond_12
    :try_start_12
    sget-object v0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 317
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_2b

    .line 318
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    sget-object v2, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    sget-object v4, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit v6

    return-object v0

    .line 320
    :cond_2b
    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_f

    .line 321
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter "cookie"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .registers 8
    .parameter "cookie"
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    sget-object v1, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_3
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_12

    .line 390
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 397
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v2

    .line 392
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->openNonAssetNative(ILjava/lang/String;I)I

    move-result v0

    .line 393
    .local v0, asset:I
    if-eqz v0, :cond_26

    .line 394
    iget v2, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 395
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V

    monitor-exit v1

    return-object v2

    .line 397
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_f

    .line 398
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset absolute file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 4
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 10
    .parameter "cookie"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    sget-object v6, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 409
    :try_start_3
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_12

    .line 410
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :catchall_f
    move-exception v0

    monitor-exit v6
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 412
    :cond_12
    :try_start_12
    sget-object v0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 414
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_2b

    .line 415
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    sget-object v2, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    sget-object v4, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit v6

    return-object v0

    .line 417
    :cond_2b
    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_f

    .line 418
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset absolute file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 3
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method final openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;
    .registers 7
    .parameter "cookie"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    sget-object v1, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_3
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_12

    .line 469
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 476
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v2

    .line 471
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlAssetNative(ILjava/lang/String;)I

    move-result v0

    .line 472
    .local v0, xmlBlock:I
    if-eqz v0, :cond_25

    .line 473
    iget v2, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 474
    new-instance v2, Landroid/content/res/XmlBlock;

    invoke-direct {v2, p0, v0}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;I)V

    monitor-exit v1

    return-object v2

    .line 476
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_f

    .line 477
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset XML file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .registers 3
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    return-object v0
.end method

.method public final openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 5
    .parameter "cookie"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 440
    .local v0, block:Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 441
    .local v1, rp:Landroid/content/res/XmlResourceParser;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    .line 442
    return-object v1
.end method

.method public final openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 3
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method final releaseTheme(I)V
    .registers 4
    .parameter "theme"

    .prologue
    .line 497
    sget-object v0, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->deleteTheme(I)V

    .line 499
    invoke-direct {p0}, Landroid/content/res/AssetManager;->decRefsLocked()V

    .line 500
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method final native retrieveArray(I[I)I
.end method

.method final native retrieveAttributes(I[I[I[I)Z
.end method

.method public final native setConfiguration(IILjava/lang/String;IIIIIIIIII)V
.end method

.method public final native setLocale(Ljava/lang/String;)V
.end method

.method xmlBlockGone()V
    .registers 3

    .prologue
    .line 481
    sget-object v0, Landroid/content/res/AssetManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_3
    invoke-direct {p0}, Landroid/content/res/AssetManager;->decRefsLocked()V

    .line 483
    monitor-exit v0

    .line 484
    return-void

    .line 483
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
