.class final Lcom/android/contacts/ViewContactActivity$ViewAdapter;
.super Lcom/android/contacts/ContactEntryAdapter;
.source "ViewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/ContactEntryAdapter",
        "<",
        "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public mVoice:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1701
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/contacts/ViewContactActivity$ViewEntry;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/ContactEntryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 1697
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060124

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->mVoice:Ljava/lang/String;

    .line 1702
    return-void
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .registers 4
    .parameter "textView"
    .parameter "maxLines"

    .prologue
    const/4 v0, 0x1

    .line 1801
    if-ne p2, v0, :cond_c

    .line 1802
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1803
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1809
    :goto_b
    return-void

    .line 1805
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1806
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1807
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_b
.end method


# virtual methods
.method protected bridge synthetic bindView(Landroid/view/View;Lcom/android/contacts/ContactEntryAdapter$Entry;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1685
    check-cast p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->bindView(Landroid/view/View;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V
    .registers 14
    .parameter "view"
    .parameter "entry"

    .prologue
    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1753
    iget-object v7, p0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1754
    .local v5, resources:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;

    .line 1757
    .local v6, views:Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;
    iget-object v2, v6, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;->label:Landroid/widget/TextView;

    .line 1758
    .local v2, label:Landroid/widget/TextView;
    iget v7, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->maxLabelLines:I

    invoke-direct {p0, v2, v7}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1759
    iget-object v7, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1762
    iget-object v1, v6, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;->data:Landroid/widget/TextView;

    .line 1763
    .local v1, data:Landroid/widget/TextView;
    if-eqz v1, :cond_2c

    .line 1764
    iget-object v7, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1765
    iget v7, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->maxLines:I

    invoke-direct {p0, v1, v7}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1766
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1770
    :cond_2c
    iget-object v0, v6, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;->actionIcon:Landroid/widget/ImageView;

    .line 1771
    .local v0, action:Landroid/widget/ImageView;
    iget v7, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    if-eq v7, v9, :cond_54

    .line 1772
    iget v7, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1773
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1783
    :goto_3e
    const/4 v4, 0x0

    .line 1784
    .local v4, presenceIcon:Landroid/graphics/drawable/Drawable;
    iget v7, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->primaryIcon:I

    if-eq v7, v9, :cond_65

    .line 1785
    iget v7, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->primaryIcon:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1790
    :cond_49
    :goto_49
    iget-object v3, v6, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 1791
    .local v3, presence:Landroid/widget/ImageView;
    if-eqz v4, :cond_70

    .line 1792
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1793
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1798
    :goto_53
    return-void

    .line 1774
    .end local v3           #presence:Landroid/widget/ImageView;
    .end local v4           #presenceIcon:Landroid/graphics/drawable/Drawable;
    :cond_54
    iget-object v7, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->iconData:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_61

    .line 1775
    iget-object v7, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->iconData:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1776
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    .line 1779
    :cond_61
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    .line 1786
    .restart local v4       #presenceIcon:Landroid/graphics/drawable/Drawable;
    :cond_65
    iget v7, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->presenceIcon:I

    if-eq v7, v9, :cond_49

    .line 1787
    iget v7, p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->presenceIcon:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_49

    .line 1795
    .restart local v3       #presence:Landroid/widget/ImageView;
    :cond_70
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1796
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_53
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 1706
    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->mSections:Ljava/util/ArrayList;

    invoke-static {v4, p1, v6}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 1710
    .local v0, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    if-nez v0, :cond_22

    .line 1711
    const-string v4, "ViewContactActivity"

    const-string v5, "Null pointer exception"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_12
    if-eqz p2, :cond_39

    .line 1722
    move-object v2, p2

    .line 1723
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;

    .line 1738
    .local v3, views:Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;
    :goto_1b
    iput-object v0, v3, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;->entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 1741
    invoke-virtual {p0, v2, v0}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->bindView(Landroid/view/View;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V

    move-object v4, v2

    .line 1742
    .end local v2           #v:Landroid/view/View;
    .end local v3           #views:Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;
    :goto_21
    return-object v4

    .line 1712
    :cond_22
    iget v4, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->kind:I

    const/4 v5, -0x3

    if-ne v4, v5, :cond_12

    .line 1714
    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030025

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1716
    .local v1, separator:Landroid/widget/TextView;
    iget-object v4, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v1

    .line 1717
    goto :goto_21

    .line 1726
    .end local v1           #separator:Landroid/widget/TextView;
    :cond_39
    iget-object v4, p0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030024

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1729
    .restart local v2       #v:Landroid/view/View;
    new-instance v3, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;

    invoke-direct {v3}, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;-><init>()V

    .line 1730
    .restart local v3       #views:Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;
    const v4, 0x1020014

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;->label:Landroid/widget/TextView;

    .line 1731
    const v4, 0x1020015

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;->data:Landroid/widget/TextView;

    .line 1732
    const v4, 0x7f050041

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;->actionIcon:Landroid/widget/ImageView;

    .line 1733
    const v4, 0x7f050042

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/contacts/ViewContactActivity$ViewAdapter$ViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 1734
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 1748
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
