.class public Landroid/app/SearchDialog$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mSearchDialog:Landroid/app/SearchDialog;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 1719
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 1720
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mThreshold:I

    .line 1721
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1724
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1725
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mThreshold:I

    .line 1726
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1729
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1730
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mThreshold:I

    .line 1731
    return-void
.end method

.method static synthetic access$000(Landroid/app/SearchDialog$SearchAutoComplete;Landroid/app/SearchDialog;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1713
    invoke-direct {p0, p1}, Landroid/app/SearchDialog$SearchAutoComplete;->setSearchDialog(Landroid/app/SearchDialog;)V

    return-void
.end method

.method static synthetic access$600(Landroid/app/SearchDialog$SearchAutoComplete;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1713
    invoke-direct {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private getAdapterCount()I
    .registers 3

    .prologue
    .line 1822
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1823
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    goto :goto_7
.end method

.method private isEmpty()Z
    .registers 2

    .prologue
    .line 1747
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private setSearchDialog(Landroid/app/SearchDialog;)V
    .registers 2
    .parameter "searchDialog"

    .prologue
    .line 1734
    iput-object p1, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mSearchDialog:Landroid/app/SearchDialog;

    .line 1735
    return-void
.end method


# virtual methods
.method public enoughToFilter()Z
    .registers 2

    .prologue
    .line 1787
    iget v0, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_a

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1796
    iget-object v0, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-static {v0}, Landroid/app/SearchDialog;->access$100(Landroid/app/SearchDialog;)Landroid/server/search/SearchableInfo;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v2

    .line 1818
    :goto_b
    return v0

    .line 1799
    :cond_c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3e

    .line 1800
    iget-object v0, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-static {v0}, Landroid/app/SearchDialog;->access$1300(Landroid/app/SearchDialog;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v3

    .line 1801
    goto :goto_b

    .line 1811
    :cond_1f
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-direct {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getDropDownChildCount()I

    move-result v0

    invoke-direct {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getAdapterCount()I

    move-result v1

    if-lt v0, v1, :cond_3c

    .line 1813
    :cond_35
    iget-object v0, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->cancel()V

    move v0, v3

    .line 1814
    goto :goto_b

    :cond_3c
    move v0, v2

    .line 1816
    goto :goto_b

    :cond_3e
    move v0, v2

    .line 1818
    goto :goto_b
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasWindowFocus"

    .prologue
    .line 1773
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1775
    if-eqz p1, :cond_15

    .line 1776
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1778
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1780
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_15
    return-void
.end method

.method public performCompletion()V
    .registers 1

    .prologue
    .line 1765
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 1756
    return-void
.end method

.method public setThreshold(I)V
    .registers 2
    .parameter "threshold"

    .prologue
    .line 1739
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1740
    iput p1, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mThreshold:I

    .line 1741
    return-void
.end method
