.class Lcom/android/browser/ImageGrid;
.super Landroid/widget/GridView;
.source "ImageGrid.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ImageGrid$Listener;
    }
.end annotation


# static fields
.field public static final CANCEL:I = -0x63

.field public static final NEW_TAB:I = -0x1

.field private static final SPACING:I = 0xa


# instance fields
.field private mAdapter:Lcom/android/browser/ImageAdapter;

.field private mIsLive:Z

.field private mListener:Lcom/android/browser/ImageGrid$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/android/browser/ImageGrid$Listener;)V
    .registers 7
    .parameter "context"
    .parameter "live"
    .parameter "l"

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean p2, p0, Lcom/android/browser/ImageGrid;->mIsLive:Z

    .line 56
    if-eqz p2, :cond_17

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/browser/ImageGrid;->setFocusable(Z)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/browser/ImageGrid;->setFocusableInTouchMode(Z)V

    .line 59
    invoke-virtual {p0, p0}, Lcom/android/browser/ImageGrid;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    invoke-virtual {p0, p0}, Lcom/android/browser/ImageGrid;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 62
    :cond_17
    iput-object p3, p0, Lcom/android/browser/ImageGrid;->mListener:Lcom/android/browser/ImageGrid$Listener;

    .line 64
    new-instance v0, Lcom/android/browser/ImageAdapter;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/browser/ImageAdapter;-><init>(Landroid/content/Context;Lcom/android/browser/ImageGrid;Z)V

    iput-object v0, p0, Lcom/android/browser/ImageGrid;->mAdapter:Lcom/android/browser/ImageAdapter;

    .line 65
    iget-object v0, p0, Lcom/android/browser/ImageGrid;->mAdapter:Lcom/android/browser/ImageAdapter;

    invoke-virtual {p0, v0}, Lcom/android/browser/ImageGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/android/browser/ImageGrid;->setBackgroundColor(I)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/browser/ImageGrid;->setVerticalSpacing(I)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/browser/ImageGrid;->setHorizontalSpacing(I)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/browser/ImageGrid;->setNumColumns(I)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/android/browser/ImageGrid;->setStretchMode(I)V

    .line 73
    const v0, 0x108001c

    invoke-virtual {p0, v0}, Lcom/android/browser/ImageGrid;->setSelector(I)V

    .line 74
    return-void
.end method


# virtual methods
.method public add(Lcom/android/browser/TabControl$Tab;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/browser/ImageGrid;->mAdapter:Lcom/android/browser/ImageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/ImageAdapter;->add(Lcom/android/browser/TabControl$Tab;)V

    .line 103
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/ImageGrid;->mAdapter:Lcom/android/browser/ImageAdapter;

    invoke-virtual {v0}, Lcom/android/browser/ImageAdapter;->clear()V

    .line 152
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    .line 83
    iget-object v0, p0, Lcom/android/browser/ImageGrid;->mListener:Lcom/android/browser/ImageGrid$Listener;

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/browser/ImageGrid;->mIsLive:Z

    if-eqz v0, :cond_1f

    .line 84
    iget-object v0, p0, Lcom/android/browser/ImageGrid;->mListener:Lcom/android/browser/ImageGrid$Listener;

    const/16 v1, -0x63

    invoke-interface {v0, v1}, Lcom/android/browser/ImageGrid$Listener;->onClick(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/browser/ImageGrid;->invalidate()V

    .line 87
    :cond_1f
    const/4 v0, 0x1

    .line 89
    :goto_20
    return v0

    :cond_21
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_20
.end method

.method public getContextMenuPosition(Landroid/view/MenuItem;)I
    .registers 5
    .parameter "menu"

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 197
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 198
    .local v1, pos:I
    iget-object v2, p0, Lcom/android/browser/ImageGrid;->mAdapter:Lcom/android/browser/ImageAdapter;

    invoke-virtual {v2}, Lcom/android/browser/ImageAdapter;->maxedOut()Z

    move-result v2

    if-nez v2, :cond_12

    .line 199
    add-int/lit8 v1, v1, -0x1

    .line 201
    :cond_12
    return v1
.end method

.method public getListener()Lcom/android/browser/ImageGrid$Listener;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/browser/ImageGrid;->mListener:Lcom/android/browser/ImageGrid$Listener;

    return-object v0
.end method

.method public isLive()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/browser/ImageGrid;->mIsLive:Z

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 174
    iget-object v5, p0, Lcom/android/browser/ImageGrid;->mListener:Lcom/android/browser/ImageGrid$Listener;

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/browser/ImageGrid;->mIsLive:Z

    if-nez v5, :cond_9

    .line 189
    .end local p0
    :cond_8
    :goto_8
    return-void

    .line 177
    .restart local p0
    :cond_9
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    .line 179
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/android/browser/ImageGrid;->mAdapter:Lcom/android/browser/ImageAdapter;

    invoke-virtual {v5}, Lcom/android/browser/ImageAdapter;->maxedOut()Z

    move-result v3

    .line 180
    .local v3, maxed:Z
    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-gtz v5, :cond_19

    if-eqz v3, :cond_8

    .line 181
    :cond_19
    new-instance v1, Landroid/view/MenuInflater;

    iget-object v5, p0, Lcom/android/browser/ImageGrid;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 182
    .local v1, inflater:Landroid/view/MenuInflater;
    const v5, 0x7f0b000a

    invoke-virtual {v1, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 183
    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 184
    .local v4, position:I
    if-nez v3, :cond_2c

    .line 185
    add-int/lit8 v4, v4, -0x1

    .line 187
    :cond_2c
    iget-object v5, p0, Lcom/android/browser/ImageGrid;->mAdapter:Lcom/android/browser/ImageAdapter;

    iget-object v5, v5, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/TabControl$Tab;

    invoke-virtual {p0}, Lcom/android/browser/TabControl$Tab;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_8
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/browser/ImageGrid;->mAdapter:Lcom/android/browser/ImageAdapter;

    invoke-virtual {v0}, Lcom/android/browser/ImageAdapter;->maxedOut()Z

    move-result v0

    if-nez v0, :cond_a

    .line 159
    add-int/lit8 p3, p3, -0x1

    .line 162
    :cond_a
    iget-object v0, p0, Lcom/android/browser/ImageGrid;->mListener:Lcom/android/browser/ImageGrid$Listener;

    if-eqz v0, :cond_13

    .line 163
    iget-object v0, p0, Lcom/android/browser/ImageGrid;->mListener:Lcom/android/browser/ImageGrid$Listener;

    invoke-interface {v0, p3}, Lcom/android/browser/ImageGrid$Listener;->onClick(I)V

    .line 165
    :cond_13
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 9
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 210
    const/16 v1, 0xa

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/android/browser/ImageGrid;->getListPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/browser/ImageGrid;->getListPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 212
    .local v0, tabHeight:I
    iget-object v1, p0, Lcom/android/browser/ImageGrid;->mAdapter:Lcom/android/browser/ImageAdapter;

    invoke-virtual {v1, v0}, Lcom/android/browser/ImageAdapter;->heightChanged(I)V

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->onSizeChanged(IIII)V

    .line 214
    return-void
.end method

.method public remove(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/browser/ImageGrid;->mAdapter:Lcom/android/browser/ImageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/ImageAdapter;->remove(I)V

    .line 116
    return-void
.end method

.method public setCurrentIndex(I)V
    .registers 3
    .parameter "startingIndex"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/browser/ImageGrid;->mAdapter:Lcom/android/browser/ImageAdapter;

    invoke-virtual {v0}, Lcom/android/browser/ImageAdapter;->maxedOut()Z

    move-result v0

    if-nez v0, :cond_a

    .line 126
    add-int/lit8 p1, p1, 0x1

    .line 128
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/browser/ImageGrid;->setSelection(I)V

    .line 129
    return-void
.end method

.method public setListener(Lcom/android/browser/ImageGrid$Listener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/browser/ImageGrid;->mListener:Lcom/android/browser/ImageGrid$Listener;

    .line 137
    return-void
.end method
