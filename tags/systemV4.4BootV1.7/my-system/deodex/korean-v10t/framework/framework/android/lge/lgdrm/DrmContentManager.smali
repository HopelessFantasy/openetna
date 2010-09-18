.class public final Landroid/lge/lgdrm/DrmContentManager;
.super Ljava/lang/Object;
.source "DrmContentManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmCntMngr"


# instance fields
.field private contentType:I

.field private filename:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "filename"
    .parameter "contentType"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/lge/lgdrm/DrmContentManager;->filename:Ljava/lang/String;

    .line 86
    iput p2, p0, Landroid/lge/lgdrm/DrmContentManager;->contentType:I

    .line 87
    return-void
.end method

.method private native nativeDeleteRights(Ljava/lang/String;)I
.end method

.method private native nativePostprocessDistributedContent(Ljava/lang/String;)I
.end method

.method private native nativePreprocessDistributeContent(Ljava/lang/String;)I
.end method


# virtual methods
.method public backupContent(Ljava/lang/String;)I
    .registers 4
    .parameter "dstFilename"

    .prologue
    .line 171
    const-string v0, "DrmCntMngr"

    const-string v1, "backupContent() : Not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, -0x1

    return v0
.end method

.method public copyContent(Ljava/lang/String;)I
    .registers 3
    .parameter "dstFilename"

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public deleteContent()I
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public deleteRights()I
    .registers 3

    .prologue
    .line 97
    iget v0, p0, Landroid/lge/lgdrm/DrmContentManager;->contentType:I

    const/16 v1, 0x51

    if-ge v0, v1, :cond_c

    iget v0, p0, Landroid/lge/lgdrm/DrmContentManager;->contentType:I

    const/16 v1, 0x3000

    if-gt v0, v1, :cond_13

    .line 100
    :cond_c
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentManager;->filename:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/lge/lgdrm/DrmContentManager;->nativeDeleteRights(Ljava/lang/String;)I

    move-result v0

    .line 103
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public moveContent(Ljava/lang/String;)I
    .registers 3
    .parameter "dstFilename"

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public postprocessDistributedContent()I
    .registers 3

    .prologue
    .line 213
    iget v0, p0, Landroid/lge/lgdrm/DrmContentManager;->contentType:I

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_8

    .line 215
    const/4 v0, 0x0

    .line 217
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentManager;->filename:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/lge/lgdrm/DrmContentManager;->nativePostprocessDistributedContent(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public preprocessDistributeContent()I
    .registers 3

    .prologue
    .line 198
    iget v0, p0, Landroid/lge/lgdrm/DrmContentManager;->contentType:I

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_8

    .line 200
    const/4 v0, 0x0

    .line 202
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContentManager;->filename:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/lge/lgdrm/DrmContentManager;->nativePreprocessDistributeContent(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public renameContent(Ljava/lang/String;)I
    .registers 3
    .parameter "dstFilename"

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public restoreContent(Ljava/lang/String;)I
    .registers 4
    .parameter "dstFilename"

    .prologue
    .line 186
    const-string v0, "DrmCntMngr"

    const-string v1, "restoreContent() : Not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, -0x1

    return v0
.end method
