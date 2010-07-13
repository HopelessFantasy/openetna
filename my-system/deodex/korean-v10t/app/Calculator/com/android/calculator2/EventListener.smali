.class Lcom/android/calculator2/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final EQUAL:[C


# instance fields
.field mHandler:Lcom/android/calculator2/Logic;

.field mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    sput-object v0, Lcom/android/calculator2/EventListener;->EQUAL:[C

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 40
    .local v0, id:I
    sparse-switch v0, :sswitch_data_54

    .line 56
    instance-of v2, p1, Landroid/widget/Button;

    if-eqz v2, :cond_46

    .line 57
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2f

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    :cond_2f
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2, v1}, Lcom/android/calculator2/Logic;->insert(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v2}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_46

    .line 65
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v2}, Lcom/android/calculator2/PanelSwitcher;->moveRight()V

    .line 69
    .end local v1           #text:Ljava/lang/String;
    :cond_46
    :goto_46
    return-void

    .line 42
    .restart local p1
    :sswitch_47
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onDelete()V

    goto :goto_46

    .line 46
    :sswitch_4d
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onEnter()V

    goto :goto_46

    .line 40
    nop

    :sswitch_data_54
    .sparse-switch
        0x7f070015 -> :sswitch_4d
        0x7f070022 -> :sswitch_47
    .end sparse-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v3, 0x15

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 85
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 87
    .local v0, action:I
    if-eq p2, v3, :cond_e

    const/16 v2, 0x16

    if-ne p2, v2, :cond_1b

    .line 89
    :cond_e
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    if-ne p2, v3, :cond_19

    move v3, v4

    :goto_13
    invoke-virtual {v2, v3}, Lcom/android/calculator2/Logic;->eatHorizontalMove(Z)Z

    move-result v1

    .local v1, eat:Z
    move v2, v1

    .line 137
    .end local v1           #eat:Z
    :goto_18
    return v2

    :cond_19
    move v3, v5

    .line 89
    goto :goto_13

    .line 94
    :cond_1b
    const/4 v2, 0x2

    if-ne v0, v2, :cond_22

    if-nez p2, :cond_22

    move v2, v4

    .line 95
    goto :goto_18

    .line 100
    :cond_22
    sget-object v2, Lcom/android/calculator2/EventListener;->EQUAL:[C

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_39

    .line 101
    if-ne v0, v4, :cond_37

    .line 102
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onEnter()V

    :cond_37
    move v2, v4

    .line 104
    goto :goto_18

    .line 107
    :cond_39
    const/16 v2, 0x17

    if-eq p2, v2, :cond_4b

    const/16 v2, 0x13

    if-eq p2, v2, :cond_4b

    const/16 v2, 0x14

    if-eq p2, v2, :cond_4b

    const/16 v2, 0x42

    if-eq p2, v2, :cond_4b

    move v2, v5

    .line 111
    goto :goto_18

    .line 121
    :cond_4b
    if-ne v0, v4, :cond_50

    .line 122
    sparse-switch p2, :sswitch_data_64

    :cond_50
    :goto_50
    move v2, v4

    .line 137
    goto :goto_18

    .line 125
    :sswitch_52
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onEnter()V

    goto :goto_50

    .line 129
    :sswitch_58
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onUp()V

    goto :goto_50

    .line 133
    :sswitch_5e
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onDown()V

    goto :goto_50

    .line 122
    :sswitch_data_64
    .sparse-switch
        0x13 -> :sswitch_58
        0x14 -> :sswitch_5e
        0x17 -> :sswitch_52
        0x42 -> :sswitch_52
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter "view"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 74
    .local v0, id:I
    const v1, 0x7f070022

    if-ne v0, v1, :cond_10

    .line 75
    iget-object v1, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v1}, Lcom/android/calculator2/Logic;->onClear()V

    .line 76
    const/4 v1, 0x1

    .line 78
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method setHandler(Lcom/android/calculator2/Logic;Lcom/android/calculator2/PanelSwitcher;)V
    .registers 3
    .parameter "handler"
    .parameter "panelSwitcher"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    .line 34
    iput-object p2, p0, Lcom/android/calculator2/EventListener;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    .line 35
    return-void
.end method
