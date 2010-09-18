.class public Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountRemoveListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/account/ui/AccountRemoveListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoveAdapter"
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

.field final synthetic this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;


# direct methods
.method public constructor <init>(Lcom/lge/sns/account/ui/AccountRemoveListView;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "resourceId"
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
    .line 68
    .local p4, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    .line 69
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 70
    iput-object p4, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;->items:Ljava/util/List;

    .line 71
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 74
    move-object v4, p2

    .line 76
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_15

    .line 77
    iget-object v6, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/lge/sns/account/ui/AccountRemoveListView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 78
    .local v5, vi:Landroid/view/LayoutInflater;
    const v6, 0x7f030006

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 81
    .end local v5           #vi:Landroid/view/LayoutInflater;
    :cond_15
    iget-object v6, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;->items:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 82
    .local v0, account:Lcom/lge/sns/account/Account;
    if-eqz v0, :cond_75

    .line 83
    const v6, 0x7f080014

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 84
    .local v2, icon:Landroid/widget/ImageView;
    const v6, 0x7f080015

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 85
    .local v3, title:Landroid/widget/TextView;
    const v6, 0x7f080013

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 87
    .local v1, check:Landroid/widget/CheckedTextView;
    if-eqz v2, :cond_43

    .line 88
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    :cond_43
    if-eqz v3, :cond_4c

    .line 91
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_4c
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_76

    iget-object v6, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    iget-object v6, v6, Lcom/lge/sns/account/ui/AccountRemoveListView;->initManager:Lcom/lge/sns/account/AccountInitializeManager;

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/sns/account/AccountInitializeManager;->isItializing(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 94
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 98
    :goto_64
    const v6, 0x7f02001b

    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 99
    iget-object v6, p0, Lcom/lge/sns/account/ui/AccountRemoveListView$RemoveAdapter;->this$0:Lcom/lge/sns/account/ui/AccountRemoveListView;

    iget-object v6, v6, Lcom/lge/sns/account/ui/AccountRemoveListView;->removeSet:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 102
    .end local v1           #check:Landroid/widget/CheckedTextView;
    .end local v2           #icon:Landroid/widget/ImageView;
    .end local v3           #title:Landroid/widget/TextView;
    :cond_75
    return-object v4

    .line 96
    .restart local v1       #check:Landroid/widget/CheckedTextView;
    .restart local v2       #icon:Landroid/widget/ImageView;
    .restart local v3       #title:Landroid/widget/TextView;
    :cond_76
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto :goto_64
.end method
