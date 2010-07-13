.class Lcom/android/contacts/ui/LiteTabHost$LabelIndicatorStrategy;
.super Ljava/lang/Object;
.source "LiteTabHost.java"

# interfaces
.implements Lcom/android/contacts/ui/LiteTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/LiteTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/contacts/ui/LiteTabHost;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ui/LiteTabHost;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter "label"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/contacts/ui/LiteTabHost$LabelIndicatorStrategy;->this$0:Lcom/android/contacts/ui/LiteTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/android/contacts/ui/LiteTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 395
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ui/LiteTabHost;Ljava/lang/CharSequence;Lcom/android/contacts/ui/LiteTabHost$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 389
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ui/LiteTabHost$LabelIndicatorStrategy;-><init>(Lcom/android/contacts/ui/LiteTabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .registers 7

    .prologue
    .line 398
    iget-object v3, p0, Lcom/android/contacts/ui/LiteTabHost$LabelIndicatorStrategy;->this$0:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v3}, Lcom/android/contacts/ui/LiteTabHost;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 400
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030027

    iget-object v4, p0, Lcom/android/contacts/ui/LiteTabHost$LabelIndicatorStrategy;->this$0:Lcom/android/contacts/ui/LiteTabHost;

    invoke-static {v4}, Lcom/android/contacts/ui/LiteTabHost;->access$700(Lcom/android/contacts/ui/LiteTabHost;)Lcom/android/contacts/ui/LiteTabWidget;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 404
    .local v1, tabIndicator:Landroid/view/View;
    const v3, 0x7f050017

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 405
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/contacts/ui/LiteTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    return-object v1
.end method
