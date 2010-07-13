.class public abstract Lcom/lge/sns/profile/ui/FriendEntryAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field public static final KIND_VIEW_ENTRY:I = 0x0

.field public static final KIND_VIEW_FOLLOWBUTTON:I = 0x1

.field public static final KIND_VIEW_PAGEBUTTON:I = 0x2

.field public static final KIND_VIEW_TEXT:I = 0x3


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/lge/sns/profile/ui/FriendEntryAdapter;,"Lcom/lge/sns/profile/ui/FriendEntryAdapter<TE;>;"
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter;->mContext:Landroid/content/Context;

    .line 70
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    iput-object p2, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter;->mSections:Ljava/util/ArrayList;

    .line 72
    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;ILcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ITE;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 75
    .local p0, this:Lcom/lge/sns/profile/ui/FriendEntryAdapter;,"Lcom/lge/sns/profile/ui/FriendEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;
    .registers 3
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lcom/lge/sns/profile/ui/FriendEntryAdapter;,"Lcom/lge/sns/profile/ui/FriendEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/lge/sns/profile/ui/FriendEntryAdapter;,"Lcom/lge/sns/profile/ui/FriendEntryAdapter<TE;>;"
    check-cast p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 12
    .local p0, this:Lcom/lge/sns/profile/ui/FriendEntryAdapter;,"Lcom/lge/sns/profile/ui/FriendEntryAdapter<TE;>;"
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/ui/FriendEntryAdapter;->getItem(I)Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 83
    .local p0, this:Lcom/lge/sns/profile/ui/FriendEntryAdapter;,"Lcom/lge/sns/profile/ui/FriendEntryAdapter<TE;>;"
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;

    .line 84
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;
    iget-wide v1, v0, Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;->id:J

    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 89
    .local p0, this:Lcom/lge/sns/profile/ui/FriendEntryAdapter;,"Lcom/lge/sns/profile/ui/FriendEntryAdapter<TE;>;"
    if-nez p2, :cond_e

    .line 90
    invoke-virtual {p0, p1, p3}, Lcom/lge/sns/profile/ui/FriendEntryAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, v:Landroid/view/View;
    :goto_6
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/ui/FriendEntryAdapter;->getItem(I)Lcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/lge/sns/profile/ui/FriendEntryAdapter;->bindView(Landroid/view/View;ILcom/lge/sns/profile/ui/FriendEntryAdapter$Entry;)V

    .line 95
    return-object v0

    .line 92
    .end local v0           #v:Landroid/view/View;
    :cond_e
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_6
.end method

.method protected abstract newView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method
