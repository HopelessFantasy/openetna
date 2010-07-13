.class public Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;
.super Landroid/test/AndroidTestCase;
.source "LockPatternKeyguardViewTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockLockPatternUtils;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;
    }
.end annotation


# instance fields
.field private mKeyguardViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;

.field private mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 187
    return-void
.end method


# virtual methods
.method protected setUp()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 219
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 220
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mUpdateMonitor:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;

    .line 221
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockLockPatternUtils;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockLockPatternUtils;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 223
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mUpdateMonitor:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v4, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$1;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    .line 228
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;

    invoke-direct {v0, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mKeyguardViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mKeyguardViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->setCallback(Lcom/android/internal/policy/impl/KeyguardViewCallback;)V

    .line 230
    return-void
.end method

.method public testMenuDoesntGoToUnlockScreenOnWakeWhenPukLocked()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mUpdateMonitor:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, v2, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 344
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    const/16 v3, 0x52

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->wakeWhenReadyTq(I)V

    .line 346
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v5, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 347
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v5, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 348
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    .line 349
    .local v0, lockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    .line 352
    .local v1, unlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getVisibility()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 353
    const/16 v2, 0x8

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getVisibility()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 354
    return-void
.end method

.method public testMenuGoesToLockScreenWhenDeviceNotSecure()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 357
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 360
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    const/16 v3, 0x52

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->wakeWhenReadyTq(I)V

    .line 362
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v5, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 363
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v5, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 364
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    .line 365
    .local v0, lockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    .line 368
    .local v1, unlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getVisibility()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 369
    const/16 v2, 0x8

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getVisibility()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 370
    return-void
.end method

.method public testScreenRequestsRecreation()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->wakeWhenReadyTq(I)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->onScreenTurnedOn()V

    .line 312
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 313
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 314
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    .line 316
    .local v0, lockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnPauseCount()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 317
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnResumeCount()I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 320
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe()V

    .line 323
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v4, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 324
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v4, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getCleanupCount()I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 328
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getCleanupCount()I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 331
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnPauseCount()I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 332
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnPauseCount()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 335
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnResumeCount()I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 336
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnResumeCount()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 337
    return-void
.end method

.method public testStateAfterCreatedWhileScreenOff()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 235
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 237
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    .line 238
    .local v0, lockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    .line 240
    .local v1, unlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnPauseCount()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 241
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnResumeCount()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 242
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getCleanupCount()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 244
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnPauseCount()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 245
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnResumeCount()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 246
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getCleanupCount()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 248
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mKeyguardViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->getPokeWakelockCount()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 249
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mKeyguardViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->getKeyguardDoneCount()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 250
    return-void
.end method

.method public testWokenByMenuKeyWhenPatternSet()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 290
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(ZZ)V

    .line 292
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    const/16 v3, 0x52

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->wakeWhenReadyTq(I)V

    .line 295
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mKeyguardViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->getPokeWakelockCount()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 298
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 299
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 300
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    .line 301
    .local v0, lockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    .line 304
    .local v1, unlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    const/16 v2, 0x8

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getVisibility()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 305
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getVisibility()I

    move-result v2

    invoke-static {v5, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 306
    return-void
.end method

.method public testWokenByNonMenuKey()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 253
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->wakeWhenReadyTq(I)V

    .line 256
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mKeyguardViewCallback:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->getPokeWakelockCount()I

    move-result v2

    invoke-static {v5, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 259
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v5, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v5, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 261
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedLockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    .line 262
    .local v0, lockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->getInjectedUnlockScreens()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;

    .line 265
    .local v1, unlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getVisibility()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 266
    const/16 v2, 0x8

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getVisibility()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 269
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnPauseCount()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 270
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnResumeCount()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 271
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getCleanupCount()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 273
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnPauseCount()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 274
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnResumeCount()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 275
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getCleanupCount()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 278
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->mLPKV:Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$TestableLockPatternKeyguardView;->onScreenTurnedOn()V

    .line 280
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnPauseCount()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 281
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnResumeCount()I

    move-result v2

    invoke-static {v5, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 282
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getCleanupCount()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 284
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnPauseCount()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 285
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getOnResumeCount()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 286
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardScreen;->getCleanupCount()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;->assertEquals(II)V

    .line 287
    return-void
.end method
