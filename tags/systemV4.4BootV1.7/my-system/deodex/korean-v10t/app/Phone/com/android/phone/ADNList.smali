.class public Lcom/android/phone/ADNList;
.super Landroid/app/ListActivity;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ADNList$QueryHandler;
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
.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mEmptyText:Landroid/widget/TextView;

.field protected mInitialSelection:I

.field protected mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    .line 51
    new-array v0, v3, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

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
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ADNList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/phone/ADNList;->setAdapter()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ADNList;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ADNList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/phone/ADNList;->reQuery()V

    return-void
.end method

.method private displayProgress(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    const v1, 0x7f090179

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz p1, :cond_1a

    const/4 v2, -0x1

    :goto_12
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 173
    return-void

    .line 169
    :cond_16
    const v1, 0x7f09017a

    goto :goto_7

    .line 170
    :cond_1a
    const/4 v2, -0x2

    goto :goto_12
.end method

.method private query()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    .line 105
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/ADNList$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    .line 108
    return-void
.end method

.method private reQuery()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 112
    return-void
.end method

.method private setAdapter()V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_41

    .line 140
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->newAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 142
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    :goto_f
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 154
    :cond_1e
    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    if-ltz v0, :cond_40

    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 155
    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setSelection(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 159
    :cond_40
    return-void

    .line 144
    :cond_41
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_f
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 209
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

    .line 210
    return-void
.end method

.method protected newAdapter()Landroid/widget/CursorAdapter;
    .registers 7

    .prologue
    .line 162
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090004

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    sget-object v5, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 74
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setContentView(I)V

    .line 75
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    .line 76
    new-instance v0, Lcom/android/phone/ADNList$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ADNList$QueryHandler;-><init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    .line 77
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 82
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 83
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 88
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 89
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 91
    :cond_c
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_13

    .line 96
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    :cond_13
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
