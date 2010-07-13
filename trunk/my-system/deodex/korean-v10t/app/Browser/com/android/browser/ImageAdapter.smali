.class public Lcom/android/browser/ImageAdapter;
.super Ljava/lang/Object;
.source "ImageAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mImageGrid:Lcom/android/browser/ImageGrid;

.field private mIsLive:Z

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/TabControl$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxedOut:Z

.field private mTabHeight:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/browser/ImageGrid;Z)V
    .registers 5
    .parameter "context"
    .parameter "grid"
    .parameter "live"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/browser/ImageAdapter;->mContext:Landroid/content/Context;

    .line 52
    iput-boolean p3, p0, Lcom/android/browser/ImageAdapter;->mIsLive:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    .line 54
    iput-object p2, p0, Lcom/android/browser/ImageAdapter;->mImageGrid:Lcom/android/browser/ImageGrid;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ImageAdapter;->mDataObservers:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ImageAdapter;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/browser/ImageAdapter;->confirmClose(I)V

    return-void
.end method

.method private clearPictureListeners(Lcom/android/browser/TabControl$Tab;)V
    .registers 4
    .parameter "t"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 85
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 86
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 87
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 90
    :cond_1b
    return-void
.end method

.method private confirmClose(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/browser/ImageAdapter;->mImageGrid:Lcom/android/browser/ImageGrid;

    invoke-virtual {v1}, Lcom/android/browser/ImageGrid;->getListener()Lcom/android/browser/ImageGrid$Listener;

    move-result-object v0

    .line 231
    .local v0, l:Lcom/android/browser/ImageGrid$Listener;
    if-nez v0, :cond_9

    .line 235
    :goto_8
    return-void

    .line 234
    :cond_9
    invoke-interface {v0, p1}, Lcom/android/browser/ImageGrid$Listener;->remove(I)V

    goto :goto_8
.end method


# virtual methods
.method public add(Lcom/android/browser/TabControl$Tab;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/browser/ImageAdapter;->mMaxedOut:Z

    if-eqz v0, :cond_5

    .line 106
    :cond_4
    :goto_4
    return-void

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Lcom/android/browser/ImageAdapter;->notifyObservers()V

    .line 103
    iget-object v0, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ImageAdapter;->mMaxedOut:Z

    goto :goto_4
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 76
    iget-object v2, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/TabControl$Tab;

    .line 77
    .local v1, t:Lcom/android/browser/TabControl$Tab;
    invoke-direct {p0, v1}, Lcom/android/browser/ImageAdapter;->clearPictureListeners(Lcom/android/browser/TabControl$Tab;)V

    goto :goto_6

    .line 79
    .end local v1           #t:Lcom/android/browser/TabControl$Tab;
    :cond_16
    iget-object v2, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 80
    invoke-virtual {p0}, Lcom/android/browser/ImageAdapter;->notifyObservers()V

    .line 81
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/browser/ImageAdapter;->mMaxedOut:Z

    if-nez v0, :cond_d

    .line 145
    iget-object v0, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 147
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/browser/ImageAdapter;->mMaxedOut:Z

    if-nez v0, :cond_f

    .line 155
    if-nez p1, :cond_8

    .line 156
    const/4 v0, 0x0

    .line 160
    :goto_7
    return-object v0

    .line 158
    :cond_8
    iget-object v0, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 160
    :cond_f
    iget-object v0, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 167
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 175
    const/4 v7, 0x0

    .line 176
    .local v7, v:Landroid/view/View;
    if-eqz p2, :cond_56

    .line 177
    move-object v7, p2

    .line 182
    :goto_7
    const v8, 0x7f0c002b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/browser/FakeWebView;

    .line 183
    .local v2, img:Lcom/android/browser/FakeWebView;
    const v8, 0x7f0c0067

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    .local v0, close:Landroid/widget/ImageView;
    const v8, 0x7f0c0066

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 187
    .local v6, tv:Landroid/widget/TextView;
    iget-boolean v8, p0, Lcom/android/browser/ImageAdapter;->mMaxedOut:Z

    if-nez v8, :cond_28

    .line 188
    add-int/lit8 p1, p1, -0x1

    .line 192
    :cond_28
    const/4 v8, -0x1

    if-eq p1, v8, :cond_72

    .line 193
    iget-object v8, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/TabControl$Tab;

    .line 194
    .local v5, t:Lcom/android/browser/TabControl$Tab;
    invoke-virtual {v2, v5}, Lcom/android/browser/FakeWebView;->setTab(Lcom/android/browser/TabControl$Tab;)V

    .line 195
    invoke-virtual {v5}, Lcom/android/browser/TabControl$Tab;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-boolean v8, p0, Lcom/android/browser/ImageAdapter;->mIsLive:Z

    if-nez v8, :cond_65

    .line 199
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    .end local v5           #t:Lcom/android/browser/TabControl$Tab;
    :goto_44
    invoke-virtual {v2}, Lcom/android/browser/FakeWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 218
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v9, p0, Lcom/android/browser/ImageAdapter;->mTabHeight:I

    if-eq v8, v9, :cond_55

    .line 219
    iget v8, p0, Lcom/android/browser/ImageAdapter;->mTabHeight:I

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    invoke-virtual {v2}, Lcom/android/browser/FakeWebView;->requestLayout()V

    .line 222
    :cond_55
    return-object v7

    .line 179
    .end local v0           #close:Landroid/widget/ImageView;
    .end local v2           #img:Lcom/android/browser/FakeWebView;
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_56
    iget-object v8, p0, Lcom/android/browser/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 180
    .local v1, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f03001b

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_7

    .line 201
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .restart local v0       #close:Landroid/widget/ImageView;
    .restart local v2       #img:Lcom/android/browser/FakeWebView;
    .restart local v5       #t:Lcom/android/browser/TabControl$Tab;
    .restart local v6       #tv:Landroid/widget/TextView;
    :cond_65
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    move v4, p1

    .line 203
    .local v4, pos:I
    new-instance v8, Lcom/android/browser/ImageAdapter$1;

    invoke-direct {v8, p0, v4}, Lcom/android/browser/ImageAdapter$1;-><init>(Lcom/android/browser/ImageAdapter;I)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_44

    .line 210
    .end local v4           #pos:I
    .end local v5           #t:Lcom/android/browser/TabControl$Tab;
    :cond_72
    const/high16 v8, -0x100

    invoke-virtual {v2, v8}, Lcom/android/browser/FakeWebView;->setBackgroundColor(I)V

    .line 211
    const v8, 0x7f020031

    invoke-virtual {v2, v8}, Lcom/android/browser/FakeWebView;->setImageResource(I)V

    .line 212
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v8}, Lcom/android/browser/FakeWebView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 213
    const/16 v8, 0x22

    invoke-virtual {v2, v10, v10, v10, v8}, Lcom/android/browser/FakeWebView;->setPadding(IIII)V

    .line 214
    const v8, 0x7f07003b

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 215
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_44
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method heightChanged(I)V
    .registers 2
    .parameter "newHeight"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/browser/ImageAdapter;->mTabHeight:I

    .line 60
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/browser/ImageAdapter;->getCount()I

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
    .line 133
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_c

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public maxedOut()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/ImageAdapter;->mMaxedOut:Z

    return v0
.end method

.method notifyObservers()V
    .registers 4

    .prologue
    .line 262
    iget-object v2, p0, Lcom/android/browser/ImageAdapter;->mDataObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 263
    .local v1, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_6

    .line 265
    .end local v1           #observer:Landroid/database/DataSetObserver;
    :cond_16
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/browser/ImageAdapter;->mDataObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public remove(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 115
    if-ltz p1, :cond_1b

    iget-object v0, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1b

    .line 116
    iget-object v0, p0, Lcom/android/browser/ImageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/TabControl$Tab;

    invoke-direct {p0, v0}, Lcom/android/browser/ImageAdapter;->clearPictureListeners(Lcom/android/browser/TabControl$Tab;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/browser/ImageAdapter;->notifyObservers()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ImageAdapter;->mMaxedOut:Z

    .line 120
    :cond_1b
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/browser/ImageAdapter;->mDataObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method
