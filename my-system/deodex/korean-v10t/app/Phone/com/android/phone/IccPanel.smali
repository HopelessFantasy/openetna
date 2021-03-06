.class public Lcom/android/phone/IccPanel;
.super Landroid/app/Dialog;
.source "IccPanel.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "PhoneApp"


# instance fields
.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    const v0, 0x7f0b0001

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method private disableKeyguard(Z)V
    .registers 3
    .parameter "disable"

    .prologue
    .line 72
    if-eqz p1, :cond_8

    .line 73
    iget-object v0, p0, Lcom/android/phone/IccPanel;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 77
    :goto_7
    return-void

    .line 75
    :cond_8
    iget-object v0, p0, Lcom/android/phone/IccPanel;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    goto :goto_7
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/IccPanel;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 44
    .local v2, winP:Landroid/view/Window;
    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 45
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 47
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 49
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 50
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v3, "keyguard"

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 51
    .local v1, km:Landroid/app/KeyguardManager;
    const-string v3, "PhoneApp"

    invoke-virtual {v1, v3}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/IccPanel;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 53
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/IccPanel;->requestWindowFeature(I)Z

    .line 54
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 80
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 81
    const/4 v0, 0x1

    .line 84
    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/IccPanel;->disableKeyguard(Z)V

    .line 60
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/IccPanel;->disableKeyguard(Z)V

    .line 66
    return-void
.end method
