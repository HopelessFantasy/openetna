.class public final Landroid/lge/lgdrm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 509
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static createContentManager(Ljava/lang/String;)Landroid/lge/lgdrm/DrmContentManager;
    .registers 4
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_e

    .line 206
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_e
    if-nez p0, :cond_18

    .line 211
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter filename is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_18
    invoke-static {p0}, Landroid/lge/lgdrm/DrmManager;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, contentType:I
    if-nez v0, :cond_26

    .line 217
    new-instance v1, Landroid/lge/lgdrm/DrmException;

    const-string v2, "Not DRM protected content"

    invoke-direct {v1, v2}, Landroid/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_26
    new-instance v1, Landroid/lge/lgdrm/DrmContentManager;

    invoke-direct {v1, p0, v0}, Landroid/lge/lgdrm/DrmContentManager;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public static createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;
    .registers 5
    .parameter "filename"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    if-nez p0, :cond_c

    .line 168
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter filename is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_c
    new-instance v0, Landroid/lge/lgdrm/DrmContent;

    invoke-direct {v0, p0, v1, v1}, Landroid/lge/lgdrm/DrmContent;-><init>(Ljava/lang/String;II)V

    .line 172
    .local v0, content:Landroid/lge/lgdrm/DrmContent;
    if-nez v0, :cond_15

    move-object v1, v2

    .line 182
    :goto_14
    return-object v1

    .line 177
    :cond_15
    invoke-static {v0, p0, v1}, Landroid/lge/lgdrm/DrmManager;->nativeGetContentBasicInfo(Landroid/lge/lgdrm/DrmContent;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1d

    move-object v1, v2

    .line 179
    goto :goto_14

    .line 182
    :cond_1d
    new-instance v1, Landroid/lge/lgdrm/DrmContentSession;

    invoke-direct {v1, v0, p1}, Landroid/lge/lgdrm/DrmContentSession;-><init>(Landroid/lge/lgdrm/DrmContent;Landroid/content/Context;)V

    goto :goto_14
.end method

.method public static createObjectSession(ILandroid/content/Context;)Landroid/lge/lgdrm/DrmObjectSession;
    .registers 4
    .parameter "downloadAgent"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_e

    .line 307
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_e
    if-nez p1, :cond_18

    .line 312
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_18
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1e

    const/4 v0, 0x6

    if-le p0, v0, :cond_26

    .line 316
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid appType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_26
    new-instance v0, Landroid/lge/lgdrm/DrmObjectSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/lge/lgdrm/DrmObjectSession;-><init>(ILandroid/content/Context;I)V

    return-object v0
.end method

.method public static getCertificateInformation(I)Ljava/lang/String;
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_e

    .line 377
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_e
    const/4 v0, 0x1

    if-lt p0, v0, :cond_14

    const/4 v0, 0x2

    if-le p0, v0, :cond_1c

    .line 382
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1c
    invoke-static {p0}, Landroid/lge/lgdrm/DrmManager;->nativeGetCertificateInformation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastError()J
    .registers 2

    .prologue
    .line 489
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getObjectDrmType([B)I
    .registers 3
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 247
    if-nez p0, :cond_a

    .line 249
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_a
    invoke-static {p0}, Landroid/lge/lgdrm/DrmManager;->nativeGetObjectDrmType([B)I

    move-result v0

    return v0
.end method

.method public static getObjectMediaMimeType([B)Ljava/lang/String;
    .registers 3
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 271
    if-nez p0, :cond_a

    .line 273
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_a
    invoke-static {p0}, Landroid/lge/lgdrm/DrmManager;->nativeGetObjectMediaMimeType([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedAgent()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_e

    .line 447
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_e
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeGetSupportedAgent()[I

    move-result-object v0

    return-object v0
.end method

.method public static isDRM(Ljava/lang/String;)I
    .registers 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 139
    if-nez p0, :cond_a

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_a
    invoke-static {p0}, Landroid/lge/lgdrm/DrmManager;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static manageCertificate(I)I
    .registers 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_e

    .line 418
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_e
    const/4 v0, 0x1

    if-lt p0, v0, :cond_14

    const/4 v0, 0x4

    if-le p0, v0, :cond_1c

    .line 423
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1c
    invoke-static {p0}, Landroid/lge/lgdrm/DrmManager;->nativeManageCertificate(I)I

    move-result v0

    return v0
.end method

.method public static manageDatabase(I)I
    .registers 3
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_e

    .line 348
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_e
    if-ltz p0, :cond_14

    const/16 v0, 0x8

    if-le p0, v0, :cond_1c

    .line 353
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1c
    invoke-static {p0}, Landroid/lge/lgdrm/DrmManager;->nativeManageDatabase(I)I

    move-result v0

    return v0
.end method

.method protected static native nativeAuthCaller()Z
.end method

.method private static native nativeGetCertificateInformation(I)Ljava/lang/String;
.end method

.method private static native nativeGetContentBasicInfo(Landroid/lge/lgdrm/DrmContent;Ljava/lang/String;I)I
.end method

.method private static native nativeGetObjectDrmType([B)I
.end method

.method private static native nativeGetObjectMediaMimeType([B)Ljava/lang/String;
.end method

.method private static native nativeGetSupportedAgent()[I
.end method

.method private static native nativeIsDRM(Ljava/lang/String;)I
.end method

.method private static native nativeManageCertificate(I)I
.end method

.method private static native nativeManageDatabase(I)I
.end method

.method private static native nativeSetDebugOptions(III)V
.end method

.method public static setDebugOptions(III)V
    .registers 5
    .parameter "agentType"
    .parameter "option"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_e

    .line 476
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_e
    invoke-static {p0, p1, p2}, Landroid/lge/lgdrm/DrmManager;->nativeSetDebugOptions(III)V

    .line 480
    return-void
.end method
