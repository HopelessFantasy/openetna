.class public Lcom/lge/sns/profile/ui/IconListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/IconListAdapter$IconListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/sns/profile/ui/IconListAdapter$IconListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final mResource:I = 0x7f03001a


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ui/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ui/IconListAdapter$IconListItem;>;"
    const v0, 0x7f03001a

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lge/sns/profile/ui/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 62
    if-nez p2, :cond_39

    .line 63
    iget-object v5, p0, Lcom/lge/sns/profile/ui/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03001a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 69
    .local v4, view:Landroid/view/View;
    :goto_c
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/ui/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/sns/profile/ui/IconListAdapter$IconListItem;

    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/IconListAdapter$IconListItem;->getAccount()Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 70
    .local v0, account:Lcom/lge/sns/account/Account;
    const v5, 0x7f080044

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    .local v3, text:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v5, 0x7f08002f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 75
    .local v2, image:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76
    .local v1, icon:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3b

    .line 77
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    :goto_38
    return-object v4

    .line 65
    .end local v0           #account:Lcom/lge/sns/account/Account;
    .end local v1           #icon:Landroid/graphics/Bitmap;
    .end local v2           #image:Landroid/widget/ImageView;
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    .restart local p0
    :cond_39
    move-object v4, p2

    .restart local v4       #view:Landroid/view/View;
    goto :goto_c

    .line 79
    .end local p0
    .restart local v0       #account:Lcom/lge/sns/account/Account;
    .restart local v1       #icon:Landroid/graphics/Bitmap;
    .restart local v2       #image:Landroid/widget/ImageView;
    .restart local v3       #text:Landroid/widget/TextView;
    :cond_3b
    const v5, 0x7f02005a

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_38
.end method
