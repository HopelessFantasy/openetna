.class public Lcom/angryredplanet/android/rings_extended/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/angryredplanet/android/rings_extended/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/angryredplanet/android/rings_extended/CheckableRelativeLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .parameter "extraSpace"

    .prologue
    .line 37
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 38
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/CheckableRelativeLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 39
    sget-object v1, Lcom/angryredplanet/android/rings_extended/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/angryredplanet/android/rings_extended/CheckableRelativeLayout;->mergeDrawableStates([I[I)[I

    .line 41
    :cond_11
    return-object v0
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/angryredplanet/android/rings_extended/CheckableRelativeLayout;->mChecked:Z

    if-eq v0, p1, :cond_9

    .line 54
    iput-boolean p1, p0, Lcom/angryredplanet/android/rings_extended/CheckableRelativeLayout;->mChecked:Z

    .line 55
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/CheckableRelativeLayout;->refreshDrawableState()V

    .line 57
    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/angryredplanet/android/rings_extended/CheckableRelativeLayout;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/angryredplanet/android/rings_extended/CheckableRelativeLayout;->setChecked(Z)V

    .line 46
    return-void

    .line 45
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
