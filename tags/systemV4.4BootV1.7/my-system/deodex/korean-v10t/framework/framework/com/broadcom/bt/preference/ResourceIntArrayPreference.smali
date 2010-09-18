.class public Lcom/broadcom/bt/preference/ResourceIntArrayPreference;
.super Landroid/preference/DialogPreference;
.source "ResourceIntArrayPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ResourceIntArrayPreference"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mClickedDialogEntryIndex:I

.field protected mEntryValues:[I

.field private mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

.field protected mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mAdapter:Landroid/widget/ListAdapter;

    .line 46
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method

.method private getValueIndex()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->findIndexOfValue(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(I)I
    .registers 3
    .parameter "value"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    if-nez v0, :cond_6

    .line 150
    const/4 v0, -0x1

    .line 152
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/SearchUtil;->binarySearch([II)I

    move-result v0

    goto :goto_5
.end method

.method public getEntryValues()[I
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    return-object v0
.end method

.method public getPreferencedChangeListener()Lcom/broadcom/bt/preference/IPreferenceChangeListener;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mValue:I

    return v0
.end method

.method public notifyChanged()V
    .registers 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/preference/DialogPreference;->notifyChanged()V

    .line 107
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

    if-eqz v0, :cond_12

    .line 108
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

    iget v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/broadcom/bt/preference/IPreferenceChangeListener;->onPreferenceChanged(Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 110
    :cond_12
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 5
    .parameter "positiveResult"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 192
    if-eqz p1, :cond_20

    iget v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_20

    iget-object v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    if-eqz v1, :cond_20

    .line 194
    iget-object v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    iget v2, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mClickedDialogEntryIndex:I

    aget v0, v1, v2

    .line 195
    .local v0, value:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 196
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->setValue(I)V

    .line 199
    .end local v0           #value:I
    :cond_20
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .parameter "a"
    .parameter "index"

    .prologue
    .line 223
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 6
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 163
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    if-nez v0, :cond_10

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ResourceListPreference requires an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_10
    invoke-direct {p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mClickedDialogEntryIndex:I

    .line 170
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$1;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$1;-><init>(Lcom/broadcom/bt/preference/ResourceIntArrayPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 258
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 260
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 267
    :goto_11
    return-void

    .line 264
    :cond_12
    move-object v0, p1

    check-cast v0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;

    move-object v1, v0

    .line 265
    .local v1, myState:Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;
    invoke-virtual {v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 266
    iget v2, v1, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;->value:I

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->setValue(I)V

    goto :goto_11
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 245
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 246
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, v1

    .line 253
    :goto_b
    return-object v2

    .line 251
    :cond_c
    new-instance v0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 252
    .local v0, myState:Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->getValue()I

    move-result v2

    iput v2, v0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference$SavedState;->value:I

    move-object v2, v0

    .line 253
    goto :goto_b
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 6
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    const-string v2, "ResourceIntArrayPreference"

    .line 228
    if-eqz p1, :cond_18

    .line 230
    :try_start_4
    iget v1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mValue:I

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->getPersistedInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->setValue(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    .line 241
    .end local p2
    :goto_d
    return-void

    .line 231
    .restart local p2
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 232
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ResourceIntArrayPreference"

    const-string v1, "Unable to restore persisted value "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 236
    .end local v0           #e:Ljava/lang/Exception;
    :cond_18
    :try_start_18
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->setValue(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_d

    .line 237
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 238
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "ResourceIntArrayPreference"

    const-string v1, "Unable to set to default value "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setAdapter(Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mAdapter:Landroid/widget/ListAdapter;

    .line 75
    invoke-virtual {p1}, Lcom/broadcom/bt/widget/IndexedIntDataArrayAdapter;->get()[I

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    .line 76
    return-void
.end method

.method public setPreferenceChangedListener(Lcom/broadcom/bt/preference/IPreferenceChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mIPreferenceChangeListener:Lcom/broadcom/bt/preference/IPreferenceChangeListener;

    .line 210
    return-void
.end method

.method public setValue(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 96
    iput p1, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mValue:I

    .line 97
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->persistInt(I)Z

    .line 101
    invoke-virtual {p0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->notifyChanged()V

    .line 102
    return-void
.end method

.method public setValueIndex(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    if-eqz v0, :cond_b

    .line 119
    iget-object v0, p0, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->mEntryValues:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/preference/ResourceIntArrayPreference;->setValue(I)V

    .line 121
    :cond_b
    return-void
.end method
