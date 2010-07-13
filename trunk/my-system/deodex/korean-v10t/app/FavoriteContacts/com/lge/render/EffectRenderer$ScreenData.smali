.class Lcom/lge/render/EffectRenderer$ScreenData;
.super Ljava/lang/Object;
.source "EffectRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/render/EffectRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenData"
.end annotation


# instance fields
.field public colors:I

.field public height:I

.field public opt_cnt:I

.field public opt_flag:I

.field final synthetic this$0:Lcom/lge/render/EffectRenderer;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>(Lcom/lge/render/EffectRenderer;)V
    .registers 2
    .parameter

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/lge/render/EffectRenderer$ScreenData;->this$0:Lcom/lge/render/EffectRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/render/EffectRenderer;Lcom/lge/render/EffectRenderer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1259
    invoke-direct {p0, p1}, Lcom/lge/render/EffectRenderer$ScreenData;-><init>(Lcom/lge/render/EffectRenderer;)V

    return-void
.end method


# virtual methods
.method public clearData()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1270
    iput v0, p0, Lcom/lge/render/EffectRenderer$ScreenData;->width:I

    .line 1271
    iput v0, p0, Lcom/lge/render/EffectRenderer$ScreenData;->height:I

    .line 1272
    iput v0, p0, Lcom/lge/render/EffectRenderer$ScreenData;->x:I

    .line 1273
    iput v0, p0, Lcom/lge/render/EffectRenderer$ScreenData;->y:I

    .line 1274
    iput v1, p0, Lcom/lge/render/EffectRenderer$ScreenData;->colors:I

    .line 1275
    iput v1, p0, Lcom/lge/render/EffectRenderer$ScreenData;->opt_flag:I

    .line 1276
    iput v0, p0, Lcom/lge/render/EffectRenderer$ScreenData;->opt_cnt:I

    .line 1277
    return-void
.end method
