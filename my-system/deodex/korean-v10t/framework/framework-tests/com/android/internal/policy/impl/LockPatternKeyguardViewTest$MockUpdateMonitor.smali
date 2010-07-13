.class Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.source "LockPatternKeyguardViewTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockUpdateMonitor"
.end annotation


# instance fields
.field public inPortrait:Z

.field public keyboardOpen:Z

.field public simState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    .line 41
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 42
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;->inPortrait:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;->keyboardOpen:Z

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;->simState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public isInPortrait()Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;->inPortrait:Z

    return v0
.end method

.method public isKeyboardOpen()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;->keyboardOpen:Z

    return v0
.end method

.method queryInPortrait()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;->inPortrait:Z

    return v0
.end method

.method queryKeyboardOpen()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockUpdateMonitor;->keyboardOpen:Z

    return v0
.end method
