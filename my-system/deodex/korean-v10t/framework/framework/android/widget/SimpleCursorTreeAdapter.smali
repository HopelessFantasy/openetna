.class public abstract Landroid/widget/SimpleCursorTreeAdapter;
.super Landroid/widget/ResourceCursorTreeAdapter;
.source "SimpleCursorTreeAdapter.java"


# instance fields
.field private mChildFrom:[I

.field private mChildTo:[I

.field private mGroupFrom:[I

.field private mGroupTo:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II[Ljava/lang/String;[III[Ljava/lang/String;[I)V
    .registers 23
    .parameter "context"
    .parameter "cursor"
    .parameter "collapsedGroupLayout"
    .parameter "expandedGroupLayout"
    .parameter "groupFrom"
    .parameter "groupTo"
    .parameter "childLayout"
    .parameter "lastChildLayout"
    .parameter "childFrom"
    .parameter "childTo"

    .prologue
    .line 86
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v5 .. v11}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IIII)V

    .line 88
    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .registers 16
    .parameter "context"
    .parameter "cursor"
    .parameter "collapsedGroupLayout"
    .parameter "expandedGroupLayout"
    .parameter "groupFrom"
    .parameter "groupTo"
    .parameter "childLayout"
    .parameter "childFrom"
    .parameter "childTo"

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;III)V

    .line 124
    invoke-direct {p0, p5, p6, p8, p9}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "groupLayout"
    .parameter "groupFrom"
    .parameter "groupTo"
    .parameter "childLayout"
    .parameter "childFrom"
    .parameter "childTo"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    .line 157
    invoke-direct {p0, p4, p5, p7, p8}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    .line 158
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V
    .registers 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p5

    if-ge v0, v3, :cond_34

    .line 198
    aget v3, p5, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1f

    .line 200
    aget v3, p4, v0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_16

    .line 202
    const-string v1, ""

    .line 204
    :cond_16
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_22

    .line 205
    check-cast v2, Landroid/widget/TextView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .end local v1           #text:Ljava/lang/String;
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    .restart local v1       #text:Ljava/lang/String;
    .restart local v2       #v:Landroid/view/View;
    :cond_22
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_2c

    .line 207
    check-cast v2, Landroid/widget/ImageView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {p0, v2, v1}, Landroid/widget/SimpleCursorTreeAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1f

    .line 209
    .restart local v2       #v:Landroid/view/View;
    :cond_2c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SimpleCursorAdapter can bind values only to TextView and ImageView!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #v:Landroid/view/View;
    :cond_34
    return-void
.end method

.method private init([Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .registers 8
    .parameter "groupFromNames"
    .parameter "groupTo"
    .parameter "childFromNames"
    .parameter "childTo"

    .prologue
    const/4 v2, 0x0

    .line 162
    iput-object p2, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupTo:[I

    .line 164
    iput-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildTo:[I

    .line 168
    invoke-direct {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->initGroupFromColumns([Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/widget/SimpleCursorTreeAdapter;->getGroupCount()I

    move-result v1

    if-lez v1, :cond_1f

    .line 172
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/widget/SimpleCursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object v0

    .line 173
    .local v0, tmpCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    if-eqz v0, :cond_1f

    .line 174
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Landroid/widget/SimpleCursorTreeAdapter;->initChildrenFromColumns([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 175
    invoke-virtual {p0, v2}, Landroid/widget/SimpleCursorTreeAdapter;->deactivateChildrenCursorHelper(I)V

    .line 178
    .end local v0           #tmpCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    :cond_1f
    return-void
.end method

.method private initChildrenFromColumns([Ljava/lang/String;Landroid/database/Cursor;)V
    .registers 4
    .parameter "childFromNames"
    .parameter "childCursor"

    .prologue
    .line 192
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    .line 193
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/SimpleCursorTreeAdapter;->initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 194
    return-void
.end method

.method private initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 7
    .parameter "cursor"
    .parameter "fromColumnNames"
    .parameter "fromColumns"

    .prologue
    .line 181
    array-length v1, p2

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_4
    if-ltz v0, :cond_11

    .line 182
    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    aput v1, p3, v0

    .line 181
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 184
    :cond_11
    return-void
.end method

.method private initGroupFromColumns([Ljava/lang/String;)V
    .registers 4
    .parameter "groupFromNames"

    .prologue
    .line 187
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    .line 188
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    invoke-direct {p0, v0, p1, v1}, Landroid/widget/SimpleCursorTreeAdapter;->initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 189
    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 218
    iget-object v4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    iget-object v5, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildTo:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorTreeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V

    .line 219
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 223
    iget-object v4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    iget-object v5, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupTo:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorTreeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V

    .line 224
    return-void
.end method

.method protected setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5
    .parameter "v"
    .parameter "value"

    .prologue
    .line 236
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 240
    :goto_7
    return-void

    .line 237
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 238
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_7
.end method
