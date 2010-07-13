.class public Llge/android/buttonflicking/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final EQUAL:[C


# instance fields
.field mPanelSwitcher:Llge/android/buttonflicking/PanelSwitcher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    sput-object v0, Llge/android/buttonflicking/EventListener;->EQUAL:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 102
    .local v0, id:I
    instance-of v2, p1, Landroid/widget/Button;

    if-eqz v2, :cond_35

    .line 103
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2c

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_2c
    iget-object v2, p0, Llge/android/buttonflicking/EventListener;->mPanelSwitcher:Llge/android/buttonflicking/PanelSwitcher;

    if-eqz v2, :cond_35

    .line 115
    iget-object v2, p0, Llge/android/buttonflicking/EventListener;->mPanelSwitcher:Llge/android/buttonflicking/PanelSwitcher;

    invoke-virtual {v2}, Llge/android/buttonflicking/PanelSwitcher;->moveRight()V

    .line 119
    .end local v1           #text:Ljava/lang/String;
    :cond_35
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 137
    .local v0, action:I
    const/16 v1, 0x15

    if-eq p2, v1, :cond_d

    const/16 v1, 0x16

    if-ne p2, v1, :cond_f

    :cond_d
    move v1, v2

    .line 188
    :goto_e
    return v1

    .line 145
    :cond_f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    if-nez p2, :cond_16

    move v1, v2

    .line 146
    goto :goto_e

    .line 158
    :cond_16
    const/16 v1, 0x17

    if-eq p2, v1, :cond_28

    const/16 v1, 0x13

    if-eq p2, v1, :cond_28

    const/16 v1, 0x14

    if-eq p2, v1, :cond_28

    const/16 v1, 0x42

    if-eq p2, v1, :cond_28

    .line 162
    const/4 v1, 0x0

    goto :goto_e

    :cond_28
    move v1, v2

    .line 188
    goto :goto_e
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter "view"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 128
    .local v0, id:I
    const/4 v1, 0x0

    return v1
.end method

.method setHandler(Llge/android/buttonflicking/PanelSwitcher;)V
    .registers 2
    .parameter "panelSwitcher"

    .prologue
    .line 38
    iput-object p1, p0, Llge/android/buttonflicking/EventListener;->mPanelSwitcher:Llge/android/buttonflicking/PanelSwitcher;

    .line 39
    return-void
.end method
