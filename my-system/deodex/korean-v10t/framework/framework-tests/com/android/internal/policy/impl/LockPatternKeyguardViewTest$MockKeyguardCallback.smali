.class Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;
.super Ljava/lang/Object;
.source "LockPatternKeyguardViewTest.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockKeyguardCallback"
.end annotation


# instance fields
.field private mKeyguardDoneCount:I

.field private mPokeWakelockCount:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->mPokeWakelockCount:I

    .line 190
    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->mKeyguardDoneCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyguardDoneCount()I
    .registers 2

    .prologue
    .line 213
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->mKeyguardDoneCount:I

    return v0
.end method

.method public getPokeWakelockCount()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->mPokeWakelockCount:I

    return v0
.end method

.method public keyguardDone(Z)V
    .registers 3
    .parameter "authenticated"

    .prologue
    .line 201
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->mKeyguardDoneCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->mKeyguardDoneCount:I

    .line 202
    return-void
.end method

.method public keyguardDoneDrawing()V
    .registers 1

    .prologue
    .line 206
    return-void
.end method

.method public pokeWakelock()V
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->mPokeWakelockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->mPokeWakelockCount:I

    .line 194
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 3
    .parameter "millis"

    .prologue
    .line 197
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->mPokeWakelockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewTest$MockKeyguardCallback;->mPokeWakelockCount:I

    .line 198
    return-void
.end method
