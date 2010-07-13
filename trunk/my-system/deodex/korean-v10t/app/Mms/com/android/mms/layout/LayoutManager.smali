.class public Lcom/android/mms/layout/LayoutManager;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "LayoutManager"

.field private static sInstance:Lcom/android/mms/layout/LayoutManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLayoutParams:Lcom/android/mms/layout/LayoutParameters;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/mms/layout/LayoutManager;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters(Landroid/content/res/Configuration;)V

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/android/mms/layout/LayoutManager;
    .registers 2

    .prologue
    .line 81
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    if-nez v0, :cond_c

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_c
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    return-object v0
.end method

.method private static getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;
    .registers 4
    .parameter "displayType"

    .prologue
    .line 58
    packed-switch p0, :pswitch_data_2c

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported display type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :pswitch_1c
    new-instance v0, Lcom/android/mms/layout/HVGALayoutParameters;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(I)V

    .line 62
    :goto_23
    return-object v0

    :pswitch_24
    new-instance v0, Lcom/android/mms/layout/HVGALayoutParameters;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(I)V

    goto :goto_23

    .line 58
    :pswitch_data_2c
    .packed-switch 0xa
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 74
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    if-eqz v0, :cond_b

    .line 75
    const-string v0, "LayoutManager"

    const-string v1, "Already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_b
    new-instance v0, Lcom/android/mms/layout/LayoutManager;

    invoke-direct {v0, p0}, Lcom/android/mms/layout/LayoutManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    .line 78
    return-void
.end method

.method private initLayoutParameters(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "configuration"

    .prologue
    .line 46
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/16 v0, 0xb

    :goto_7
    invoke-static {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 55
    return-void

    .line 46
    :cond_e
    const/16 v0, 0xa

    goto :goto_7
.end method


# virtual methods
.method public getLayoutHeight()I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    return-object v0
.end method

.method public getLayoutType()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getType()I

    move-result v0

    return v0
.end method

.method public getLayoutWidth()I
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters(Landroid/content/res/Configuration;)V

    .line 92
    return-void
.end method
