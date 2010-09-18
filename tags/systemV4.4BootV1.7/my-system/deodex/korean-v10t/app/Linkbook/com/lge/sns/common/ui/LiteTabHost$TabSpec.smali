.class public Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;
.super Ljava/lang/Object;
.source "LiteTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/common/ui/LiteTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/lge/sns/common/ui/LiteTabHost$ContentStrategy;

.field private mIndicatorStrategy:Lcom/lge/sns/common/ui/LiteTabHost$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/sns/common/ui/LiteTabHost;


# direct methods
.method private constructor <init>(Lcom/lge/sns/common/ui/LiteTabHost;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "tag"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->this$0:Lcom/lge/sns/common/ui/LiteTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p2, p0, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->mTag:Ljava/lang/String;

    .line 339
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sns/common/ui/LiteTabHost;Ljava/lang/String;Lcom/lge/sns/common/ui/LiteTabHost$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 330
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;-><init>(Lcom/lge/sns/common/ui/LiteTabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;)Lcom/lge/sns/common/ui/LiteTabHost$IndicatorStrategy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->mIndicatorStrategy:Lcom/lge/sns/common/ui/LiteTabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;)Lcom/lge/sns/common/ui/LiteTabHost$ContentStrategy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->mContentStrategy:Lcom/lge/sns/common/ui/LiteTabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;
    .registers 6
    .parameter "intent"

    .prologue
    .line 361
    new-instance v0, Lcom/lge/sns/common/ui/LiteTabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->this$0:Lcom/lge/sns/common/ui/LiteTabHost;

    iget-object v2, p0, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/lge/sns/common/ui/LiteTabHost$IntentContentStrategy;-><init>(Lcom/lge/sns/common/ui/LiteTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/lge/sns/common/ui/LiteTabHost$1;)V

    iput-object v0, p0, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->mContentStrategy:Lcom/lge/sns/common/ui/LiteTabHost$ContentStrategy;

    .line 362
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;
    .registers 5
    .parameter "label"

    .prologue
    .line 345
    new-instance v0, Lcom/lge/sns/common/ui/LiteTabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->this$0:Lcom/lge/sns/common/ui/LiteTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/lge/sns/common/ui/LiteTabHost$LabelIndicatorStrategy;-><init>(Lcom/lge/sns/common/ui/LiteTabHost;Ljava/lang/CharSequence;Lcom/lge/sns/common/ui/LiteTabHost$1;)V

    iput-object v0, p0, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->mIndicatorStrategy:Lcom/lge/sns/common/ui/LiteTabHost$IndicatorStrategy;

    .line 346
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;
    .registers 6
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 353
    new-instance v0, Lcom/lge/sns/common/ui/LiteTabHost$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->this$0:Lcom/lge/sns/common/ui/LiteTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/lge/sns/common/ui/LiteTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/lge/sns/common/ui/LiteTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/lge/sns/common/ui/LiteTabHost$1;)V

    iput-object v0, p0, Lcom/lge/sns/common/ui/LiteTabHost$TabSpec;->mIndicatorStrategy:Lcom/lge/sns/common/ui/LiteTabHost$IndicatorStrategy;

    .line 354
    return-object p0
.end method
