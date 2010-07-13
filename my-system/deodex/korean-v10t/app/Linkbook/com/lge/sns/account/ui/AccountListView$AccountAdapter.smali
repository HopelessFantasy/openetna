.class public Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/account/ui/AccountListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/sns/account/Account;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/sns/account/ui/AccountListView;


# direct methods
.method public constructor <init>(Lcom/lge/sns/account/ui/AccountListView;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "itemViewResourceID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p4, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    .line 88
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 89
    iput-object p4, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->items:Ljava/util/List;

    .line 90
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 93
    iget-object v7, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->items:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 94
    .local v0, account:Lcom/lge/sns/account/Account;
    move-object v5, p2

    .line 95
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_23

    .line 96
    iget-object v7, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Lcom/lge/sns/account/ui/AccountListView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 97
    .local v6, vi:Landroid/view/LayoutInflater;
    const v7, 0x7f030004

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 98
    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    .end local v6           #vi:Landroid/view/LayoutInflater;
    :cond_23
    if-eqz v0, :cond_86

    .line 102
    const/high16 v7, 0x7f08

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 103
    .local v1, accountImg:Landroid/widget/ImageView;
    const v7, 0x7f080001

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 104
    .local v2, accountName:Landroid/widget/TextView;
    const v7, 0x7f08000f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 105
    .local v3, ptogress:Landroid/widget/ProgressBar;
    const v7, 0x7f080010

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 107
    .local v4, status:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v7, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;

    invoke-direct {v7, p0, v0}, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter$1;-><init>(Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;Lcom/lge/sns/account/Account;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_87

    const v7, 0x7f02004a

    :goto_67
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_8b

    iget-object v7, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    iget-object v7, v7, Lcom/lge/sns/account/ui/AccountListView;->initManager:Lcom/lge/sns/account/AccountInitializeManager;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/sns/account/ui/AccountListView$AccountAdapter;->this$0:Lcom/lge/sns/account/ui/AccountListView;

    invoke-virtual {v7, v8, v9}, Lcom/lge/sns/account/AccountInitializeManager;->isItializing(Ljava/lang/String;Lcom/lge/sns/account/AccountInitializer$InitializeListener;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 142
    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    .end local v1           #accountImg:Landroid/widget/ImageView;
    .end local v2           #accountName:Landroid/widget/TextView;
    .end local v3           #ptogress:Landroid/widget/ProgressBar;
    .end local v4           #status:Landroid/widget/ImageView;
    :cond_86
    :goto_86
    return-object v5

    .line 139
    .restart local v1       #accountImg:Landroid/widget/ImageView;
    .restart local v2       #accountName:Landroid/widget/TextView;
    .restart local v3       #ptogress:Landroid/widget/ProgressBar;
    .restart local v4       #status:Landroid/widget/ImageView;
    :cond_87
    const v7, 0x7f020049

    goto :goto_67

    .line 145
    :cond_8b
    invoke-virtual {v3, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_86
.end method
