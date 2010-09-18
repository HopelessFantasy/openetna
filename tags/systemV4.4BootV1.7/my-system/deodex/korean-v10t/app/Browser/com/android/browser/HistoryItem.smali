.class Lcom/android/browser/HistoryItem;
.super Lcom/android/browser/BookmarkItem;
.source "HistoryItem.java"


# instance fields
.field private mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mStar:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .line 52
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/android/browser/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    .line 53
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 54
    new-instance v0, Lcom/android/browser/HistoryItem$1;

    invoke-direct {v0, p0}, Lcom/android/browser/HistoryItem$1;-><init>(Lcom/android/browser/HistoryItem;)V

    iput-object v0, p0, Lcom/android/browser/HistoryItem;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method copyTo(Lcom/android/browser/HistoryItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 112
    iget-object v0, p1, Lcom/android/browser/HistoryItem;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/HistoryItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p1, Lcom/android/browser/HistoryItem;->mUrlText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/HistoryItem;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/browser/HistoryItem;->setIsBookmark(Z)V

    .line 115
    iget-object v0, p1, Lcom/android/browser/HistoryItem;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/HistoryItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    return-void
.end method

.method setIsBookmark(Z)V
    .registers 4
    .parameter "isBookmark"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/browser/HistoryItem;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    return-void
.end method
