.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final CONFIGURED_EXPANDABLE:I = 0x4

.field private static final CONFIGURED_LARGE_SCREENS:I = 0x10

.field private static final DBG:Z = false

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo; = null

.field public static final DEFAULT_PORTRAIT_HEIGHT:I = 0x1e0

.field public static final DEFAULT_PORTRAIT_WIDTH:I = 0x140

.field private static final EXPANDABLE:I = 0x2

.field private static final LARGE_SCREENS:I = 0x8

.field private static final SCALING_EXPANDABLE_MASK:I = 0xb

.field private static final SCALING_REQUIRED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CompatibilityInfo"


# instance fields
.field public final appFlags:I

.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .prologue
    const/high16 v4, 0x3f80

    .line 157
    const/16 v1, 0x1e00

    const/4 v2, 0x6

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIIFF)V

    .line 165
    return-void
.end method

.method private constructor <init>(IIIFF)V
    .registers 6
    .parameter "appFlags"
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->appFlags:I

    .line 150
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 151
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 152
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 153
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .parameter "appInfo"

    .prologue
    const/high16 v2, 0x3f80

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->appFlags:I

    .line 127
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_15

    .line 128
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 130
    :cond_15
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_21

    .line 131
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 134
    :cond_21
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_30

    .line 135
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 136
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 137
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 145
    :goto_2f
    return-void

    .line 139
    :cond_30
    const/16 v0, 0xa0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 140
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 142
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float v0, v2, v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 143
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto :goto_2f
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method public static updateCompatibleScreenFrame(Landroid/util/DisplayMetrics;ILandroid/graphics/Rect;)V
    .registers 11
    .parameter "dm"
    .parameter "orientation"
    .parameter "outRect"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    .line 349
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 350
    .local v2, width:I
    const/high16 v4, 0x43f0

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 351
    .local v0, portraitHeight:I
    const/high16 v4, 0x43a0

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 352
    .local v1, portraitWidth:I
    const/4 v4, 0x2

    if-ne p1, v4, :cond_20

    .line 353
    sub-int v4, v2, v0

    div-int/lit8 v3, v4, 0x2

    .line 354
    .local v3, xOffset:I
    add-int v4, v3, v0

    invoke-virtual {p2, v3, v7, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 359
    :goto_1f
    return-void

    .line 356
    .end local v3           #xOffset:I
    :cond_20
    sub-int v4, v2, v1

    div-int/lit8 v3, v4, 0x2

    .line 357
    .restart local v3       #xOffset:I
    add-int v4, v3, v1

    invoke-virtual {p2, v3, v7, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1f
.end method


# virtual methods
.method public copy()Landroid/content/res/CompatibilityInfo;
    .registers 7

    .prologue
    .line 171
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->appFlags:I

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v5, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIIFF)V

    .line 173
    .local v0, info:Landroid/content/res/CompatibilityInfo;
    return-object v0
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isConfiguredExpandable()Z
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isConfiguredLargeScreens()Z
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isScalingRequired()Z
    .registers 2

    .prologue
    .line 216
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setExpandable(Z)V
    .registers 3
    .parameter "expandable"

    .prologue
    .line 180
    if-eqz p1, :cond_9

    .line 181
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 185
    :goto_8
    return-void

    .line 183
    :cond_9
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto :goto_8
.end method

.method public setLargeScreens(Z)V
    .registers 3
    .parameter "expandable"

    .prologue
    .line 191
    if-eqz p1, :cond_9

    .line 192
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 196
    :goto_8
    return-void

    .line 194
    :cond_9
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto :goto_8
.end method

.method public supportsScreen()Z
    .registers 3

    .prologue
    .line 220
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0xa

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompatibilityInfo{scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supports screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
