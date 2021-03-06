.class public interface abstract Landroid/view/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;,
        Landroid/view/WindowManagerPolicy$WindowState;
    }
.end annotation


# static fields
.field public static final ACTION_GO_TO_SLEEP:I = 0x4

.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final ACTION_POKE_USER_ACTIVITY:I = 0x2

.field public static final ACTION_VIRTUAL_ACT:I = 0x8

.field public static final FLAG_ALT:I = 0x10

.field public static final FLAG_ALT_GR:I = 0x20

.field public static final FLAG_BRIGHT_HERE:I = 0x20000000

.field public static final FLAG_CAPS_LOCK:I = 0x8

.field public static final FLAG_LAUNCHER:I = 0x80

.field public static final FLAG_MENU:I = 0x40

.field public static final FLAG_SHIFT:I = 0x4

.field public static final FLAG_WAKE:I = 0x1

.field public static final FLAG_WAKE_DROPPED:I = 0x2

.field public static final FLAG_WOKE_HERE:I = 0x10000000

.field public static final OFF_BECAUSE_OF_TIMEOUT:I = 0x2

.field public static final OFF_BECAUSE_OF_USER:I = 0x1

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final USE_LAST_ROTATION:I = -0x3e8

.field public static final WATCH_POINTER:Z


# virtual methods
.method public abstract addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;II)Landroid/view/View;
.end method

.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;)V
.end method

.method public abstract adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract beginAnimationLw(II)V
.end method

.method public abstract beginLayoutLw(II)V
.end method

.method public abstract checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract detectSafeMode()Z
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishAnimationLw()Z
.end method

.method public abstract finishLayoutLw()Z
.end method

.method public abstract getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V
.end method

.method public abstract interceptKeyTi(Landroid/view/WindowManagerPolicy$WindowState;IIZI)Z
.end method

.method public abstract interceptKeyTq(Landroid/view/RawInputEvent;Z)I
.end method

.method public abstract isAppSwitchKeyTqTiLwLi(I)Z
.end method

.method public abstract isCheekPressedAgainstScreen(Landroid/view/MotionEvent;)Z
.end method

.method public abstract isMovementKeyTi(I)Z
.end method

.method public abstract isUnlockScreenOn()Z
.end method

.method public abstract isWakeAbsMovementTq(IILandroid/view/RawInputEvent;)Z
.end method

.method public abstract isWakeRelMovementTq(IILandroid/view/RawInputEvent;)Z
.end method

.method public abstract keyguardIsShowingTq()Z
.end method

.method public abstract layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
.end method

.method public abstract prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract preprocessInputEventTq(Landroid/view/RawInputEvent;)Z
.end method

.method public abstract removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
.end method

.method public abstract removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract rotationForOrientationLw(IIZ)I
.end method

.method public abstract screenOnStoppedLw()V
.end method

.method public abstract screenTurnedOff(I)V
.end method

.method public abstract screenTurnedOn()V
.end method

.method public abstract selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
.end method

.method public abstract setCurrentOrientationLw(I)V
.end method

.method public abstract subWindowTypeToLayerLw(I)I
.end method

.method public abstract systemReady()V
.end method

.method public abstract windowTypeToLayerLw(I)I
.end method
