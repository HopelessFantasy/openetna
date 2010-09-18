.class public Landroid/widget/SimpleCursorAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;,
        Landroid/widget/SimpleCursorAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I

.field private final mHolders:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "[",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I

.field private mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 7
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mHolders:Ljava/util/WeakHashMap;

    .line 89
    iput-object p5, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 90
    iput-object p4, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 91
    invoke-direct {p0, p4}, Landroid/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private findColumns([Ljava/lang/String;)V
    .registers 7
    .parameter "from"

    .prologue
    .line 332
    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_24

    .line 334
    array-length v0, p1

    .line 335
    .local v0, count:I
    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    array-length v2, v2

    if-eq v2, v0, :cond_12

    .line 336
    :cond_e
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    .line 338
    :cond_12
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v0, :cond_27

    .line 339
    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    iget-object v3, p0, Landroid/widget/SimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    aget-object v4, p1, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 342
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_24
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    .line 344
    :cond_27
    return-void
.end method

.method private generateViewHolder(Landroid/view/View;)Landroid/view/View;
    .registers 7
    .parameter "v"

    .prologue
    .line 105
    iget-object v3, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 106
    .local v3, to:[I
    array-length v0, v3

    .line 107
    .local v0, count:I
    new-array v1, v0, [Landroid/view/View;

    .line 109
    .local v1, holder:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v0, :cond_13

    .line 110
    aget v4, v3, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v1, v2

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 112
    :cond_13
    iget-object v4, p0, Landroid/widget/SimpleCursorAdapter;->mHolders:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-object p1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 143
    iget-object v8, p0, Landroid/widget/SimpleCursorAdapter;->mHolders:Ljava/util/WeakHashMap;

    invoke-virtual {v8, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/View;

    .line 144
    .local v4, holder:[Landroid/view/View;
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 145
    .local v0, binder:Landroid/widget/SimpleCursorAdapter$ViewBinder;
    iget-object v8, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    array-length v2, v8

    .line 146
    .local v2, count:I
    iget-object v3, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    .line 148
    .local v3, from:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_10
    if-ge v5, v2, :cond_68

    .line 149
    aget-object v7, v4, v5

    .line 150
    .local v7, v:Landroid/view/View;
    if-eqz v7, :cond_34

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, bound:Z
    if-eqz v0, :cond_1f

    .line 153
    aget v8, v3, v5

    invoke-interface {v0, v7, p3, v8}, Landroid/widget/SimpleCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v1

    .line 156
    :cond_1f
    if-nez v1, :cond_34

    .line 157
    aget v8, v3, v5

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, text:Ljava/lang/String;
    if-nez v6, :cond_2b

    .line 159
    const-string v6, ""

    .line 162
    :cond_2b
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_37

    .line 163
    check-cast v7, Landroid/widget/TextView;

    .end local v7           #v:Landroid/view/View;
    invoke-virtual {p0, v7, v6}, Landroid/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 148
    .end local v1           #bound:Z
    .end local v6           #text:Ljava/lang/String;
    :cond_34
    :goto_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 164
    .restart local v1       #bound:Z
    .restart local v6       #text:Ljava/lang/String;
    .restart local v7       #v:Landroid/view/View;
    :cond_37
    instance-of v8, v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_41

    .line 165
    check-cast v7, Landroid/widget/ImageView;

    .end local v7           #v:Landroid/view/View;
    invoke-virtual {p0, v7, v6}, Landroid/widget/SimpleCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_34

    .line 167
    .restart local v7       #v:Landroid/view/View;
    :cond_41
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 173
    .end local v1           #bound:Z
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #v:Landroid/view/View;
    :cond_68
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 350
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 5
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 365
    iput-object p2, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 366
    iput-object p3, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 367
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 368
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 316
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_b

    .line 317
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    invoke-interface {v0, p1}, Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 322
    :goto_a
    return-object v0

    .line 318
    :cond_b
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_17

    .line 319
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 322
    :cond_17
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a
.end method

.method public getCursorToStringConverter()Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public getStringConversionColumn()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public getViewBinder()Landroid/widget/SimpleCursorAdapter$ViewBinder;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/SimpleCursorAdapter;->generateViewHolder(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/SimpleCursorAdapter;->generateViewHolder(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setCursorToStringConverter(Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;)V
    .registers 2
    .parameter "cursorToStringConverter"

    .prologue
    .line 300
    iput-object p1, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    .line 301
    return-void
.end method

.method public setStringConversionColumn(I)V
    .registers 2
    .parameter "stringConversionColumn"

    .prologue
    .line 268
    iput p1, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 269
    return-void
.end method

.method public setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V
    .registers 2
    .parameter "viewBinder"

    .prologue
    .line 197
    iput-object p1, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 198
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5
    .parameter "v"
    .parameter "value"

    .prologue
    .line 217
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 221
    :goto_7
    return-void

    .line 218
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 219
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_7
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3
    .parameter "v"
    .parameter "text"

    .prologue
    .line 235
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method
