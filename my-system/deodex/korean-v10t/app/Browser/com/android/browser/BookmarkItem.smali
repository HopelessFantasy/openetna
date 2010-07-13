.class Lcom/android/browser/BookmarkItem;
.super Landroid/widget/LinearLayout;
.source "BookmarkItem.java"


# instance fields
.field protected mImageView:Landroid/widget/ImageView;

.field public mIsOperatorUrl:Z

.field protected mTextView:Landroid/widget/TextView;

.field protected mUrl:Ljava/lang/String;

.field protected mUrlText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/browser/BookmarkItem;->mIsOperatorUrl:Z

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030013

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    const v2, 0x7f0c0001

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/browser/BookmarkItem;->mTextView:Landroid/widget/TextView;

    .line 54
    const v2, 0x7f0c0002

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/browser/BookmarkItem;->mUrlText:Landroid/widget/TextView;

    .line 55
    const/high16 v2, 0x7f0c

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    .line 56
    const v2, 0x7f0c0049

    invoke-virtual {p0, v2}, Lcom/android/browser/BookmarkItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, star:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-void
.end method


# virtual methods
.method copyTo(Lcom/android/browser/BookmarkItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 65
    iget-object v0, p1, Lcom/android/browser/BookmarkItem;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/BookmarkItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p1, Lcom/android/browser/BookmarkItem;->mUrlText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/BookmarkItem;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p1, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNameTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "b"

    .prologue
    .line 95
    if-eqz p1, :cond_8

    .line 96
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    :goto_7
    return-void

    .line 98
    :cond_8
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7
.end method

.method setName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iput-object p1, p0, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BookmarkItem;->mIsOperatorUrl:Z

    .line 121
    return-void
.end method

.method setUrl(Ljava/lang/String;Z)V
    .registers 6
    .parameter "url"
    .parameter "isOperatorUrl"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_DO_NOT_EDIT_OR_DELETE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v0}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v0

    if-ne v0, v2, :cond_26

    .line 128
    if-eqz p2, :cond_23

    .line 129
    iput-boolean v2, p0, Lcom/android/browser/BookmarkItem;->mIsOperatorUrl:Z

    .line 136
    :goto_11
    sget-object v0, Lcom/lge/browser/OpCfgItem;->CFG_BOOKMARK_HIDE_OPERATOR_URL:Lcom/lge/browser/OpCfgItem;

    invoke-static {v0}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v0

    if-ne v0, v2, :cond_22

    .line 137
    if-eqz p2, :cond_29

    .line 138
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mUrlText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :cond_22
    :goto_22
    return-void

    .line 131
    :cond_23
    iput-boolean v1, p0, Lcom/android/browser/BookmarkItem;->mIsOperatorUrl:Z

    goto :goto_11

    .line 134
    :cond_26
    iput-boolean v1, p0, Lcom/android/browser/BookmarkItem;->mIsOperatorUrl:Z

    goto :goto_11

    .line 140
    :cond_29
    iget-object v0, p0, Lcom/android/browser/BookmarkItem;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22
.end method
