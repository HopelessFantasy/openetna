.class Lcom/android/phone/DTMFTwelveKeyDialer$DTMFDisplayMovementMethod;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialer.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DTMFDisplayMovementMethod"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 966
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFDisplayMovementMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .registers 2

    .prologue
    .line 1004
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 3
    .parameter "widget"
    .parameter "text"

    .prologue
    .line 997
    return-void
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 970
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 981
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 4
    .parameter "view"
    .parameter "text"
    .parameter "dir"

    .prologue
    .line 1000
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    .line 993
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    .line 987
    const/4 v0, 0x0

    return v0
.end method
