.class final Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;
.super Lcom/lge/sns/profile/ui/FriendEntryAdapter;
.source "ImportFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/ImportFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lge/sns/profile/ui/FriendEntryAdapter",
        "<",
        "Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;",
        ">;"
    }
.end annotation


# static fields
.field static mSelectPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 396
    const/4 v0, -0x1

    sput v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->mSelectPosition:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;>;"
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/ui/FriendEntryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 399
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindView(Landroid/view/View;ILcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 395
    check-cast p3, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->bindView(Landroid/view/View;ILcom/lge/sns/profile/ui/ImportFriends$ViewEntry;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILcom/lge/sns/profile/ui/ImportFriends$ViewEntry;)V
    .registers 8
    .parameter "view"
    .parameter "position"
    .parameter "entry"

    .prologue
    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;

    .line 468
    .local v1, views:Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;
    iget-object v0, v1, Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;->nameView:Landroid/widget/TextView;

    .line 470
    .local v0, nameView:Landroid/widget/TextView;
    if-eqz v0, :cond_27

    .line 471
    iget-object v2, p3, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileListItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, p3, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileListItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_32

    .line 473
    iget-object v2, p3, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileListItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :cond_27
    :goto_27
    iget-boolean v2, p3, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->isAdded:Z

    if-eqz v2, :cond_61

    .line 484
    const v2, 0x7f020077

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 494
    :goto_31
    return-void

    .line 474
    :cond_32
    iget-object v2, p3, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileListItem;->getUserName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_50

    iget-object v2, p3, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileListItem;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_50

    .line 476
    iget-object v2, p3, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v2}, Lcom/lge/sns/profile/ProfileListItem;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 478
    :cond_50
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 486
    :cond_61
    iget-boolean v2, p3, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->isSelect:Z

    if-eqz v2, :cond_6c

    .line 488
    const v2, 0x7f02007a

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_31

    .line 492
    :cond_6c
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_31
.end method

.method public disSelect()V
    .registers 3

    .prologue
    .line 419
    sget v1, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->mSelectPosition:I

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->getItem(I)Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    .line 420
    .local v0, selentry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->isSelect:Z

    .line 421
    const/4 v1, -0x1

    sput v1, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->mSelectPosition:I

    .line 422
    return-void
.end method

.method public getSelected()Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    .registers 3

    .prologue
    .line 426
    sget v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->mSelectPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 427
    const/4 v0, 0x0

    .line 429
    .end local p0
    :goto_6
    return-object v0

    .restart local p0
    :cond_7
    sget v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->mSelectPosition:I

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->getItem(I)Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    move-object v0, p0

    goto :goto_6
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->getItem(I)Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    .line 435
    .local v0, entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    const/4 v1, 0x0

    .line 439
    .local v1, v:Landroid/view/View;
    if-eqz p2, :cond_16

    .line 440
    move-object v1, p2

    .line 441
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;

    .line 452
    .local v2, views:Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;
    :goto_10
    iput-object v0, v2, Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;->entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    .line 455
    invoke-virtual {p0, v1, p1, v0}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->bindView(Landroid/view/View;ILcom/lge/sns/profile/ui/ImportFriends$ViewEntry;)V

    .line 456
    return-object v1

    .line 443
    .end local v2           #views:Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;
    :cond_16
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 444
    new-instance v2, Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;

    invoke-direct {v2}, Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;-><init>()V

    .line 446
    .restart local v2       #views:Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;
    const v3, 0x7f08004c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;->nameView:Landroid/widget/TextView;

    .line 448
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_10
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 461
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSelect(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->getItem(I)Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    .line 404
    .local v1, selentry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    iget-boolean v2, v1, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->isAdded:Z

    if-eqz v2, :cond_b

    .line 415
    :goto_a
    return-void

    .line 408
    :cond_b
    sget v2, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->mSelectPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    .line 410
    sget v2, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->mSelectPosition:I

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->getItem(I)Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    .line 411
    .local v0, disentry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->isSelect:Z

    .line 413
    .end local v0           #disentry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    :cond_1b
    sput p1, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->mSelectPosition:I

    .line 414
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->isSelect:Z

    goto :goto_a
.end method
