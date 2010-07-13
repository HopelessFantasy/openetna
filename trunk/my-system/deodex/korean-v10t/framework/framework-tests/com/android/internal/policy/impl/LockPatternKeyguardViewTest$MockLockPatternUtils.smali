.class Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockLockPatternUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "LockPatternKeyguardViewTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockLockPatternUtils"
.end annotation


# instance fields
.field isLockPatternEnabled:Z

.field public isPermanentlyLocked:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/ContentResolver;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockLockPatternUtils;->isLockPatternEnabled:Z

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockLockPatternUtils;->isPermanentlyLocked:Z

    .line 81
    return-void
.end method


# virtual methods
.method public isLockPatternEnabled()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockLockPatternUtils;->isLockPatternEnabled:Z

    return v0
.end method

.method public isPermanentlyLocked()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockLockPatternUtils;->isPermanentlyLocked:Z

    return v0
.end method

.method public setLockPatternEnabled(Z)V
    .registers 2
    .parameter "lockPatternEnabled"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockLockPatternUtils;->isLockPatternEnabled:Z

    .line 91
    return-void
.end method

.method public setPermanentlyLocked(Z)V
    .registers 2
    .parameter "permanentlyLocked"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockLockPatternUtils;->isPermanentlyLocked:Z

    .line 100
    return-void
.end method
