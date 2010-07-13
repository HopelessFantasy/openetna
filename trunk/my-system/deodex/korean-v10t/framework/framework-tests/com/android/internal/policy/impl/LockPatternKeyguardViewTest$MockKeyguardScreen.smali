.class Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
.super Landroid/view/View;
.source "LockPatternKeyguardViewTest.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockKeyguardScreen"
.end annotation


# instance fields
.field private mCleanupCount:I

.field private mOnPauseCount:I

.field private mOnResumeCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 105
    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->mOnPauseCount:I

    .line 106
    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->mOnResumeCount:I

    .line 107
    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->mCleanupCount:I

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->setFocusable(Z)V

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->mCleanupCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->mCleanupCount:I

    .line 132
    return-void
.end method

.method public getCleanupCount()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->mCleanupCount:I

    return v0
.end method

.method public getOnPauseCount()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->mOnPauseCount:I

    return v0
.end method

.method public getOnResumeCount()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->mOnResumeCount:I

    return v0
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->mOnPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->mOnPauseCount:I

    .line 122
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->mOnResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->mOnResumeCount:I

    .line 127
    return-void
.end method
