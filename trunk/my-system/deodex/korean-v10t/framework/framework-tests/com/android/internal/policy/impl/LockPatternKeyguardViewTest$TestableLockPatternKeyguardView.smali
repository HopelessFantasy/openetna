.class Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.source "LockPatternKeyguardViewTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestableLockPatternKeyguardView"
.end annotation


# instance fields
.field private mInjectedLockScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mInjectedUnlockScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .registers 5
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    return-void
.end method


# virtual methods
.method createLockScreen()Landroid/view/View;
    .registers 4

    .prologue
    .line 164
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$1;)V

    .line 165
    .local v0, newView:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->mInjectedLockScreens:Ljava/util/List;

    if-nez v1, :cond_14

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->mInjectedLockScreens:Ljava/util/List;

    .line 166
    :cond_14
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->mInjectedLockScreens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-object v0
.end method

.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .registers 5
    .parameter "unlockMode"

    .prologue
    .line 172
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$1;)V

    .line 173
    .local v0, newView:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->mInjectedUnlockScreens:Ljava/util/List;

    if-nez v1, :cond_14

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->mInjectedUnlockScreens:Ljava/util/List;

    .line 174
    :cond_14
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->mInjectedUnlockScreens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-object v0
.end method

.method public getInjectedLockScreens()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->mInjectedLockScreens:Ljava/util/List;

    return-object v0
.end method

.method public getInjectedUnlockScreens()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->mInjectedUnlockScreens:Ljava/util/List;

    return-object v0
.end method
