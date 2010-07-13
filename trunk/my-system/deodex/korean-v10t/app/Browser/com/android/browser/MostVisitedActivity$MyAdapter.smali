.class Lcom/android/browser/MostVisitedActivity$MyAdapter;
.super Ljava/lang/Object;
.source "MostVisitedActivity.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MostVisitedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/MostVisitedActivity$MyAdapter$ChangeObserver;
    }
.end annotation


# instance fields
.field private final mBookmarkIndex:I

.field private mCursor:Landroid/database/Cursor;

.field private mObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitleIndex:I

.field private final mUrlIndex:I

.field final synthetic this$0:Lcom/android/browser/MostVisitedActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/MostVisitedActivity;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 91
    iput-object p1, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->this$0:Lcom/android/browser/MostVisitedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v1, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mUrlIndex:I

    .line 88
    iput v4, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mTitleIndex:I

    .line 89
    iput v6, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mBookmarkIndex:I

    .line 92
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mObservers:Ljava/util/Vector;

    .line 93
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "url"

    aput-object v0, v2, v1

    const-string v0, "title"

    aput-object v0, v2, v4

    const-string v0, "bookmark"

    aput-object v0, v2, v6

    .line 97
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "visits != 0"

    .line 98
    .local v3, whereClause:Ljava/lang/String;
    const-string v5, "visits DESC"

    .line 99
    .local v5, orderBy:Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/MostVisitedActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mCursor:Landroid/database/Cursor;

    .line 101
    iget-object v0, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mCursor:Landroid/database/Cursor;

    new-instance v1, Lcom/android/browser/MostVisitedActivity$MyAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/browser/MostVisitedActivity$MyAdapter$ChangeObserver;-><init>(Lcom/android/browser/MostVisitedActivity$MyAdapter;)V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 129
    if-nez p2, :cond_41

    .line 130
    new-instance v1, Lcom/android/browser/HistoryItem;

    iget-object v3, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->this$0:Lcom/android/browser/MostVisitedActivity;

    invoke-direct {v1, v3}, Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;)V

    .line 134
    .local v1, item:Lcom/android/browser/HistoryItem;
    :goto_b
    iget-object v3, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 135
    iget-object v3, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/browser/HistoryItem;->setName(Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, url:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/browser/HistoryItem;->setUrl(Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->this$0:Lcom/android/browser/MostVisitedActivity;

    invoke-virtual {v3}, Lcom/android/browser/MostVisitedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet(Landroid/content/ContentResolver;)Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->getFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/browser/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 140
    iget-object v3, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v5, v3, :cond_46

    move v3, v5

    :goto_3d
    invoke-virtual {v1, v3}, Lcom/android/browser/HistoryItem;->setIsBookmark(Z)V

    .line 141
    return-object v1

    .line 132
    .end local v1           #item:Lcom/android/browser/HistoryItem;
    .end local v2           #url:Ljava/lang/String;
    :cond_41
    move-object v0, p2

    check-cast v0, Lcom/android/browser/HistoryItem;

    move-object v1, v0

    .restart local v1       #item:Lcom/android/browser/HistoryItem;
    goto :goto_b

    .restart local v2       #url:Ljava/lang/String;
    :cond_46
    move v3, v6

    .line 140
    goto :goto_3d
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/browser/MostVisitedActivity$MyAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method refreshData()V
    .registers 4

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 122
    iget-object v2, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 123
    .local v1, o:Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_b

    .line 125
    .end local v1           #o:Landroid/database/DataSetObserver;
    :cond_1b
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/browser/MostVisitedActivity$MyAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method
