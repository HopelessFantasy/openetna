.class public abstract Lcom/android/contacts/GroupEntryAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/GroupEntryAdapter$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/contacts/GroupEntryAdapter$Entry;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


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
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
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
    .line 53
    .local p0, this:Lcom/android/contacts/GroupEntryAdapter;,"Lcom/android/contacts/GroupEntryAdapter<TE;>;"
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/contacts/GroupEntryAdapter;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/GroupEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object p2, p0, Lcom/android/contacts/GroupEntryAdapter;->mSections:Ljava/util/ArrayList;

    .line 57
    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;ILcom/android/contacts/GroupEntryAdapter$Entry;)V
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
    .line 60
    .local p0, this:Lcom/android/contacts/GroupEntryAdapter;,"Lcom/android/contacts/GroupEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/contacts/GroupEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/GroupEntryAdapter$Entry;
    .registers 3
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/android/contacts/GroupEntryAdapter;,"Lcom/android/contacts/GroupEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/contacts/GroupEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/android/contacts/GroupEntryAdapter;,"Lcom/android/contacts/GroupEntryAdapter<TE;>;"
    check-cast p0, Lcom/android/contacts/GroupEntryAdapter$Entry;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 12
    .local p0, this:Lcom/android/contacts/GroupEntryAdapter;,"Lcom/android/contacts/GroupEntryAdapter<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/GroupEntryAdapter;->getItem(I)Lcom/android/contacts/GroupEntryAdapter$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 68
    .local p0, this:Lcom/android/contacts/GroupEntryAdapter;,"Lcom/android/contacts/GroupEntryAdapter<TE;>;"
    iget-object v1, p0, Lcom/android/contacts/GroupEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_15

    .line 69
    iget-object v1, p0, Lcom/android/contacts/GroupEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupEntryAdapter$Entry;

    .line 70
    .local v0, entry:Lcom/android/contacts/GroupEntryAdapter$Entry;
    if-eqz v0, :cond_15

    .line 71
    iget-wide v1, v0, Lcom/android/contacts/GroupEntryAdapter$Entry;->id:J

    .line 74
    .end local v0           #entry:Lcom/android/contacts/GroupEntryAdapter$Entry;
    :goto_14
    return-wide v1

    :cond_15
    const-wide/16 v1, -0x1

    goto :goto_14
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 79
    .local p0, this:Lcom/android/contacts/GroupEntryAdapter;,"Lcom/android/contacts/GroupEntryAdapter<TE;>;"
    if-nez p2, :cond_e

    .line 80
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/GroupEntryAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, v:Landroid/view/View;
    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/contacts/GroupEntryAdapter;->getItem(I)Lcom/android/contacts/GroupEntryAdapter$Entry;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/contacts/GroupEntryAdapter;->bindView(Landroid/view/View;ILcom/android/contacts/GroupEntryAdapter$Entry;)V

    .line 85
    return-object v0

    .line 82
    .end local v0           #v:Landroid/view/View;
    :cond_e
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_6
.end method

.method protected abstract newView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method
