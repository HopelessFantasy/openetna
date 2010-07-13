.class public Lcom/android/settings/ProgressCategory;
.super Landroid/preference/PreferenceCategory;
.source "ProgressCategory.java"


# instance fields
.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 32
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 38
    const v3, 0x7f0a0088

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, textView:Landroid/view/View;
    const v3, 0x7f0a0022

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_1e

    const/4 v3, 0x0

    move v2, v3

    .line 42
    .local v2, visibility:I
    :goto_17
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    return-void

    .line 41
    .end local v2           #visibility:I
    :cond_1e
    const/4 v3, 0x4

    move v2, v3

    goto :goto_17
.end method

.method public setProgress(Z)V
    .registers 2
    .parameter "progressOn"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 53
    return-void
.end method
