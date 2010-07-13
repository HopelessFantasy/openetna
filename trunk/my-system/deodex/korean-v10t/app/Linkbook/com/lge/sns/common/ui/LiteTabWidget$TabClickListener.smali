.class Lcom/lge/sns/common/ui/LiteTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "LiteTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/common/ui/LiteTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/lge/sns/common/ui/LiteTabWidget;


# direct methods
.method private constructor <init>(Lcom/lge/sns/common/ui/LiteTabWidget;I)V
    .registers 3
    .parameter
    .parameter "tabIndex"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/lge/sns/common/ui/LiteTabWidget$TabClickListener;->this$0:Lcom/lge/sns/common/ui/LiteTabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p2, p0, Lcom/lge/sns/common/ui/LiteTabWidget$TabClickListener;->mTabIndex:I

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sns/common/ui/LiteTabWidget;ILcom/lge/sns/common/ui/LiteTabWidget$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/common/ui/LiteTabWidget$TabClickListener;-><init>(Lcom/lge/sns/common/ui/LiteTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/sns/common/ui/LiteTabWidget$TabClickListener;->this$0:Lcom/lge/sns/common/ui/LiteTabWidget;

    invoke-static {v0}, Lcom/lge/sns/common/ui/LiteTabWidget;->access$100(Lcom/lge/sns/common/ui/LiteTabWidget;)Lcom/lge/sns/common/ui/LiteTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/lge/sns/common/ui/LiteTabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/sns/common/ui/LiteTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 197
    return-void
.end method
