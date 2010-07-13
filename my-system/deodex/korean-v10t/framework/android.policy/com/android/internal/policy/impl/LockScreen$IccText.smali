.class Lcom/android/internal/policy/impl/LockScreen$IccText;
.super Ljava/lang/Object;
.source "LockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IccText"
.end annotation


# instance fields
.field iccErrorMessage:I

.field iccErrorMessageShort:I

.field iccInstructionsWhenPatternDisabled:I

.field iccInstructionsWhenPatternEnabled:I

.field iccMissingInstructions:I

.field iccMissingMessage:I

.field iccMissingMessageShort:I

.field iccPinLockedMessage:I

.field iccPukLockedInstructions:I

.field iccPukLockedMessage:I

.field networkLockedMessage:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/LockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$IccText;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/policy/impl/LockScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen$IccText;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    return-void
.end method
