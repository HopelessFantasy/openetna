.class public Lcom/android/contacts/IconListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/IconListAdapter$IconListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/IconListAdapter$IconListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final mResource:I = 0x7f030023


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
            "Lcom/android/contacts/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/IconListAdapter$IconListItem;>;"
    const v0, 0x7f030023

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 50
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 59
    if-nez p2, :cond_39

    .line 60
    iget-object v4, p0, Lcom/android/contacts/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030023

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 65
    .local v3, view:Landroid/view/View;
    :goto_c
    invoke-virtual {p0, p1}, Lcom/android/contacts/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/IconListAdapter$IconListItem;

    .line 68
    .local v1, item:Lcom/android/contacts/IconListAdapter$IconListItem;
    const v4, 0x7f050040

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, text:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/contacts/IconListAdapter$IconListItem;->access$000(Lcom/android/contacts/IconListAdapter$IconListItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    .local v0, image:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/contacts/IconListAdapter$IconListItem;->access$100(Lcom/android/contacts/IconListAdapter$IconListItem;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 74
    invoke-static {v1}, Lcom/android/contacts/IconListAdapter$IconListItem;->access$100(Lcom/android/contacts/IconListAdapter$IconListItem;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    :goto_38
    return-object v3

    .line 62
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #item:Lcom/android/contacts/IconListAdapter$IconListItem;
    .end local v2           #text:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_39
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_c

    .line 76
    .restart local v0       #image:Landroid/widget/ImageView;
    .restart local v1       #item:Lcom/android/contacts/IconListAdapter$IconListItem;
    .restart local v2       #text:Landroid/widget/TextView;
    :cond_3b
    const v4, 0x7f0200d5

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_38
.end method
