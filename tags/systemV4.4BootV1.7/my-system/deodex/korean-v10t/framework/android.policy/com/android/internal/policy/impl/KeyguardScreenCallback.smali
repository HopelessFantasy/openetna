.class public interface abstract Lcom/android/internal/policy/impl/KeyguardScreenCallback;
.super Ljava/lang/Object;
.source "KeyguardScreenCallback.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewCallback;


# virtual methods
.method public abstract doesFallbackUnlockScreenExist()Z
.end method

.method public abstract goToLockScreen()V
.end method

.method public abstract goToUnlockScreen()V
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isVerifyUnlockOnly()Z
.end method

.method public abstract recreateMe()V
.end method

.method public abstract reportFailedPatternAttempt()V
.end method

.method public abstract takeEmergencyCallAction()V
.end method
