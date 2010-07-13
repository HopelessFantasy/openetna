.class public Lcom/android/phone/SortedADNList;
.super Landroid/app/ListActivity;
.source "SortedADNList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SortedADNList$QueryHandler;,
        Lcom/android/phone/SortedADNList$ADNItem;
    }
.end annotation


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String; = null

.field protected static final DBG:Z = false

.field protected static final DELETE_TOKEN:I = 0x3

.field protected static final INSERT_TOKEN:I = 0x1

.field protected static final NAME_COLUMN:I = 0x0

.field protected static final NUMBER_COLUMN:I = 0x1

.field protected static final QUERY_TOKEN:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "ADNList"

.field protected static final UPDATE_TOKEN:I = 0x2

.field private static final VIEW_NAMES:[I


# instance fields
.field protected mADNList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/SortedADNList$ADNItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/phone/SortedADNList$ADNItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mCursor:Landroid/database/Cursor;

.field private mEmptyText:Landroid/widget/TextView;

.field protected mInitialSelection:I

.field protected mQueryHandler:Lcom/android/phone/SortedADNList$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 47
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/SortedADNList;->COLUMN_NAMES:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/phone/SortedADNList;->VIEW_NAMES:[I

    return-void

    nop

    :array_18
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SortedADNList;->mCursor:Landroid/database/Cursor;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/SortedADNList;->mInitialSelection:I

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SortedADNList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/SortedADNList;->setAdapter()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SortedADNList;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/SortedADNList;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SortedADNList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/SortedADNList;->reQuery()V

    return-void
.end method

.method private buildArrayAdapter()V
    .registers 9

    .prologue
    .line 93
    const/4 v3, 0x0

    .line 94
    .local v3, itemNum:I
    const/4 v2, 0x0

    .line 95
    .local v2, item:Lcom/android/phone/SortedADNList$ADNItem;
    const/4 v0, 0x0

    .line 96
    .local v0, adnItem:Lcom/android/phone/SortedADNList$ADNItem;
    const/4 v1, 0x0

    .line 98
    .local v1, index:I
    iget-object v6, p0, Lcom/android/phone/SortedADNList;->mCursor:Landroid/database/Cursor;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 99
    iget-object v6, p0, Lcom/android/phone/SortedADNList;->mADNList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 100
    :cond_f
    :goto_f
    iget-object v6, p0, Lcom/android/phone/SortedADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 102
    iget-object v6, p0, Lcom/android/phone/SortedADNList;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/SortedADNList;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, number:Ljava/lang/String;
    new-instance v0, Lcom/android/phone/SortedADNList$ADNItem;

    .end local v0           #adnItem:Lcom/android/phone/SortedADNList$ADNItem;
    invoke-direct {v0, p0, v4, v5}, Lcom/android/phone/SortedADNList$ADNItem;-><init>(Lcom/android/phone/SortedADNList;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .restart local v0       #adnItem:Lcom/android/phone/SortedADNList$ADNItem;
    if-eqz v0, :cond_f

    .line 110
    iget-object v6, p0, Lcom/android/phone/SortedADNList;->mADNList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 111
    const/4 v2, 0x0

    .line 112
    const/4 v1, 0x0

    :goto_34
    if-ge v1, v3, :cond_4a

    .line 113
    iget-object v6, p0, Lcom/android/phone/SortedADNList;->mADNList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/android/phone/SortedADNList$ADNItem;
    check-cast v2, Lcom/android/phone/SortedADNList$ADNItem;

    .line 114
    .restart local v2       #item:Lcom/android/phone/SortedADNList$ADNItem;
    if-eqz v2, :cond_50

    iget-object v6, v0, Lcom/android/phone/SortedADNList$ADNItem;->mName:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/phone/SortedADNList$ADNItem;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_50

    .line 118
    :cond_4a
    iget-object v6, p0, Lcom/android/phone/SortedADNList;->mADNList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_f

    .line 112
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 120
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    :cond_53
    return-void
.end method

.method private displayProgress(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/phone/SortedADNList;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    const v1, 0x7f090179

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/phone/SortedADNList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz p1, :cond_1a

    const/4 v2, -0x1

    :goto_12
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 254
    return-void

    .line 250
    :cond_16
    const v1, 0x7f09017a

    goto :goto_7

    .line 251
    :cond_1a
    const/4 v2, -0x2

    goto :goto_12
.end method

.method private reQuery()V
    .registers 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/phone/SortedADNList;->query()V

    .line 186
    return-void
.end method

.method private setAdapter()V
    .registers 4

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/phone/SortedADNList;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    if-nez v1, :cond_4a

    .line 220
    const v0, 0x7f03001c

    .line 221
    .local v0, resID:I
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/phone/SortedADNList;->mADNList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/SortedADNList;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 222
    invoke-direct {p0}, Lcom/android/phone/SortedADNList;->buildArrayAdapter()V

    .line 223
    iget-object v1, p0, Lcom/android/phone/SortedADNList;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v1}, Lcom/android/phone/SortedADNList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    .end local v0           #resID:I
    :goto_18
    iget-object v1, p0, Lcom/android/phone/SortedADNList;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/phone/SortedADNList;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_27

    .line 231
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/SortedADNList;->mInitialSelection:I

    .line 235
    :cond_27
    iget v1, p0, Lcom/android/phone/SortedADNList;->mInitialSelection:I

    if-ltz v1, :cond_49

    iget v1, p0, Lcom/android/phone/SortedADNList;->mInitialSelection:I

    iget-object v2, p0, Lcom/android/phone/SortedADNList;->mADNList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 236
    iget v1, p0, Lcom/android/phone/SortedADNList;->mInitialSelection:I

    invoke-virtual {p0, v1}, Lcom/android/phone/SortedADNList;->setSelection(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/SortedADNList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/android/phone/SortedADNList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 240
    :cond_49
    return-void

    .line 225
    :cond_4a
    invoke-direct {p0}, Lcom/android/phone/SortedADNList;->buildArrayAdapter()V

    .line 226
    iget-object v1, p0, Lcom/android/phone/SortedADNList;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_18
.end method


# virtual methods
.method protected deleteItem(I)V
    .registers 13
    .parameter "position"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/phone/SortedADNList;->mADNList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4a

    .line 160
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v8, map:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/phone/SortedADNList;->mADNList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/SortedADNList$ADNItem;

    .line 162
    .local v7, item:Lcom/android/phone/SortedADNList$ADNItem;
    iget-object v9, v7, Lcom/android/phone/SortedADNList$ADNItem;->mName:Ljava/lang/String;

    .line 163
    .local v9, name:Ljava/lang/String;
    iget-object v10, v7, Lcom/android/phone/SortedADNList$ADNItem;->mNumber:Ljava/lang/String;

    .line 164
    .local v10, number:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND number =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, where:Ljava/lang/String;
    :try_start_3c
    iget-object v0, p0, Lcom/android/phone/SortedADNList;->mQueryHandler:Lcom/android/phone/SortedADNList$QueryHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "content://icc/adn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/SortedADNList$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4a} :catch_4b

    .line 174
    .end local v4           #where:Ljava/lang/String;
    .end local v7           #item:Lcom/android/phone/SortedADNList$ADNItem;
    .end local v8           #map:Landroid/content/ContentValues;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    :cond_4a
    :goto_4a
    return-void

    .line 169
    .restart local v4       #where:Ljava/lang/String;
    .restart local v7       #item:Lcom/android/phone/SortedADNList$ADNItem;
    .restart local v8       #map:Landroid/content/ContentValues;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #number:Ljava/lang/String;
    :catch_4b
    move-exception v0

    move-object v6, v0

    .line 171
    .local v6, e:Ljava/lang/Exception;
    goto :goto_4a
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 290
    const-string v0, "ADNList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ADNList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method protected newAdapter()Landroid/widget/CursorAdapter;
    .registers 7

    .prologue
    .line 243
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090004

    iget-object v3, p0, Lcom/android/phone/SortedADNList;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/android/phone/SortedADNList;->COLUMN_NAMES:[Ljava/lang/String;

    sget-object v5, Lcom/android/phone/SortedADNList;->VIEW_NAMES:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/phone/SortedADNList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 126
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/phone/SortedADNList;->setContentView(I)V

    .line 127
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/phone/SortedADNList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/SortedADNList;->mEmptyText:Landroid/widget/TextView;

    .line 128
    new-instance v0, Lcom/android/phone/SortedADNList$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/SortedADNList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/SortedADNList$QueryHandler;-><init>(Lcom/android/phone/SortedADNList;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/SortedADNList;->mQueryHandler:Lcom/android/phone/SortedADNList$QueryHandler;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SortedADNList;->mADNList:Ljava/util/ArrayList;

    .line 131
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 137
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 142
    iget-object v0, p0, Lcom/android/phone/SortedADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 143
    iget-object v0, p0, Lcom/android/phone/SortedADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 145
    :cond_c
    return-void
.end method

.method protected query()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/android/phone/SortedADNList;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    .line 179
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/SortedADNList;->mQueryHandler:Lcom/android/phone/SortedADNList$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/phone/SortedADNList;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/SortedADNList$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/SortedADNList;->displayProgress(Z)V

    .line 182
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/phone/SortedADNList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_13

    .line 150
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 153
    :cond_13
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
