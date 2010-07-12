.class public Landroid/preference/CheckBoxPreference;
.super Landroid/preference/Preference;
.source "CheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/CheckBoxPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mChecked:Z

.field private mDisableDependentsState:Z

.field private mSendAccessibilityEventViewClickedType:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget-object v1, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 61
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mDisableDependentsState:Z

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/preference/CheckBoxPreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 67
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .registers 2

    .prologue
    .line 241
    iget-boolean v0, p0, Landroid/preference/CheckBoxPreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Landroid/preference/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Landroid/preference/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 11
    .parameter "view"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 81
    const v7, 0x1020001

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, checkboxView:Landroid/view/View;
    if-eqz v1, :cond_36

    instance-of v7, v1, Landroid/widget/Checkable;

    if-eqz v7, :cond_36

    .line 83
    move-object v0, v1

    check-cast v0, Landroid/widget/Checkable;

    move-object v7, v0

    iget-boolean v8, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    invoke-interface {v7, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 88
    iget-boolean v7, p0, Landroid/preference/CheckBoxPreference;->mSendAccessibilityEventViewClickedType:Z

    if-eqz v7, :cond_36

    iget-object v7, p0, Landroid/preference/CheckBoxPreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_36

    .line 91
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/preference/CheckBoxPreference;->mSendAccessibilityEventViewClickedType:Z

    .line 93
    const/4 v2, 0x1

    .line 94
    .local v2, eventType:I
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 99
    .end local v2           #eventType:I
    :cond_36
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 100
    .local v5, summaryView:Landroid/widget/TextView;
    if-eqz v5, :cond_6a

    .line 101
    const/4 v6, 0x1

    .line 102
    .local v6, useDefaultSummary:Z
    iget-boolean v7, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    if-eqz v7, :cond_6b

    iget-object v7, p0, Landroid/preference/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6b

    .line 103
    iget-object v7, p0, Landroid/preference/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/4 v6, 0x0

    .line 110
    :cond_50
    :goto_50
    if-eqz v6, :cond_5c

    .line 111
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    .line 112
    .local v4, summary:Ljava/lang/CharSequence;
    if-eqz v4, :cond_5c

    .line 113
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const/4 v6, 0x0

    .line 118
    .end local v4           #summary:Ljava/lang/CharSequence;
    :cond_5c
    const/16 v3, 0x8

    .line 119
    .local v3, newVisibility:I
    if-nez v6, :cond_61

    .line 121
    const/4 v3, 0x0

    .line 123
    :cond_61
    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v3, v7, :cond_6a

    .line 124
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    .end local v3           #newVisibility:I
    .end local v6           #useDefaultSummary:Z
    :cond_6a
    return-void

    .line 105
    .restart local v6       #useDefaultSummary:Z
    :cond_6b
    iget-boolean v7, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    if-nez v7, :cond_50

    iget-object v7, p0, Landroid/preference/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-eqz v7, :cond_50

    .line 106
    iget-object v7, p0, Landroid/preference/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v6, 0x0

    goto :goto_50
.end method

.method protected onClick()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 131
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 133
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_18

    move v0, v2

    .line 137
    .local v0, newValue:Z
    :goto_b
    iput-boolean v2, p0, Landroid/preference/CheckBoxPreference;->mSendAccessibilityEventViewClickedType:Z

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 144
    :goto_17
    return-void

    .line 133
    .end local v0           #newValue:Z
    :cond_18
    const/4 v1, 0x0

    move v0, v1

    goto :goto_b

    .line 143
    .restart local v0       #newValue:Z
    :cond_1b
    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_17
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .parameter "a"
    .parameter "index"

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 280
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/preference/CheckBoxPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 282
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 289
    :goto_11
    return-void

    .line 286
    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference$SavedState;

    move-object v1, v0

    .line 287
    .local v1, myState:Landroid/preference/CheckBoxPreference$SavedState;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 288
    iget-boolean v2, v1, Landroid/preference/CheckBoxPreference$SavedState;->checked:Z

    invoke-virtual {p0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_11
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 267
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 268
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, v1

    .line 275
    :goto_b
    return-object v2

    .line 273
    :cond_c
    new-instance v0, Landroid/preference/CheckBoxPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 274
    .local v0, myState:Landroid/preference/CheckBoxPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/preference/CheckBoxPreference$SavedState;->checked:Z

    move-object v2, v0

    .line 275
    goto :goto_b
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 261
    if-eqz p1, :cond_c

    iget-boolean v0, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2
    :goto_8
    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 263
    return-void

    .line 261
    .restart local p2
    :cond_c
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_8
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 153
    iput-boolean p1, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    .line 155
    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->persistBoolean(Z)Z

    .line 157
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->notifyDependencyChange(Z)V

    .line 159
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->notifyChanged()V

    .line 160
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .registers 2
    .parameter "disableDependentsState"

    .prologue
    .line 251
    iput-boolean p1, p0, Landroid/preference/CheckBoxPreference;->mDisableDependentsState:Z

    .line 252
    return-void
.end method

.method public setSummaryOff(I)V
    .registers 3
    .parameter "summaryResId"

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "summary"

    .prologue
    .line 211
    iput-object p1, p0, Landroid/preference/CheckBoxPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 212
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    .line 213
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->notifyChanged()V

    .line 215
    :cond_b
    return-void
.end method

.method public setSummaryOn(I)V
    .registers 3
    .parameter "summaryResId"

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "summary"

    .prologue
    .line 183
    iput-object p1, p0, Landroid/preference/CheckBoxPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 184
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->notifyChanged()V

    .line 187
    :cond_b
    return-void
.end method

.method public shouldDisableDependents()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    iget-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mDisableDependentsState:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    move v0, v1

    .line 174
    .local v0, shouldDisable:Z
    :goto_9
    if-nez v0, :cond_11

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_11
    move v1, v3

    :goto_12
    return v1

    .line 173
    .end local v0           #shouldDisable:Z
    :cond_13
    iget-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    if-nez v1, :cond_19

    move v0, v3

    goto :goto_9

    :cond_19
    move v0, v2

    goto :goto_9

    .restart local v0       #shouldDisable:Z
    :cond_1b
    move v1, v2

    .line 174
    goto :goto_12
.end method
