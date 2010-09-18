.class public Lcom/android/settings/SyncStateCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SyncStateCheckBoxPreference.java"


# instance fields
.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mFailed:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 43
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/settings/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public isOneTimeSyncMode()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 15
    .parameter "view"

    .prologue
    const/16 v9, 0x8

    const/4 v12, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 49
    const v8, 0x1010001

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 50
    .local v5, syncActiveView:Landroid/widget/ImageView;
    const v8, 0x1010002

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 51
    .local v7, syncPendingView:Landroid/view/View;
    const/high16 v8, 0x101

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 53
    .local v6, syncFailedView:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsActive:Z

    if-eqz v8, :cond_72

    move v8, v12

    :goto_21
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 57
    .local v0, anim:Landroid/graphics/drawable/AnimationDrawable;
    iget-boolean v8, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsActive:Z

    if-eqz v8, :cond_74

    .line 58
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, showPending:Z
    const/4 v2, 0x0

    .line 72
    .local v2, showError:Z
    :goto_33
    if-eqz v2, :cond_82

    move v8, v12

    :goto_36
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 73
    if-eqz v3, :cond_84

    iget-boolean v8, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsActive:Z

    if-nez v8, :cond_84

    move v8, v12

    :goto_40
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const v8, 0x1020001

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, checkBox:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-eqz v8, :cond_86

    .line 77
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 84
    const v8, 0x1020010

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 85
    .local v4, summary:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/SyncStateCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f05000c

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/SyncStateCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .end local v4           #summary:Landroid/widget/TextView;
    :goto_71
    return-void

    .end local v0           #anim:Landroid/graphics/drawable/AnimationDrawable;
    .end local v1           #checkBox:Landroid/view/View;
    .end local v2           #showError:Z
    .end local v3           #showPending:Z
    :cond_72
    move v8, v9

    .line 53
    goto :goto_21

    .line 62
    .restart local v0       #anim:Landroid/graphics/drawable/AnimationDrawable;
    :cond_74
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 63
    iget-boolean v8, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsPending:Z

    if-eqz v8, :cond_7e

    .line 64
    const/4 v3, 0x1

    .line 65
    .restart local v3       #showPending:Z
    const/4 v2, 0x0

    .restart local v2       #showError:Z
    goto :goto_33

    .line 67
    .end local v2           #showError:Z
    .end local v3           #showPending:Z
    :cond_7e
    const/4 v3, 0x0

    .line 68
    .restart local v3       #showPending:Z
    iget-boolean v2, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mFailed:Z

    .restart local v2       #showError:Z
    goto :goto_33

    :cond_82
    move v8, v9

    .line 72
    goto :goto_36

    :cond_84
    move v8, v9

    .line 73
    goto :goto_40

    .line 87
    .restart local v1       #checkBox:Landroid/view/View;
    :cond_86
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_71
.end method

.method protected onClick()V
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_7

    .line 138
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 140
    :cond_7
    return-void
.end method

.method public setActive(Z)V
    .registers 2
    .parameter "isActive"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 98
    return-void
.end method

.method public setFailed(Z)V
    .registers 2
    .parameter "failed"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mFailed:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 116
    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .registers 2
    .parameter "oneTimeSyncMode"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 124
    return-void
.end method

.method public setPending(Z)V
    .registers 2
    .parameter "isPending"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 107
    return-void
.end method
