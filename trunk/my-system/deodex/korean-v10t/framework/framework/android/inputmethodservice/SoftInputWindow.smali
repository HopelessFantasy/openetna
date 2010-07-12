.class Landroid/inputmethodservice/SoftInputWindow;
.super Landroid/app/Dialog;
.source "SoftInputWindow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 54
    invoke-direct {p0}, Landroid/inputmethodservice/SoftInputWindow;->initDockWindow()V

    .line 55
    return-void
.end method

.method private initDockWindow()V
    .registers 5

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 126
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7db

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 127
    const-string v1, "InputMethod"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 130
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 135
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 136
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x108

    const/16 v3, 0x10a

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 142
    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 4

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 69
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_14

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_17

    .line 70
    :cond_14
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 72
    :goto_16
    return v1

    :cond_17
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_16
.end method

.method public setGravity(I)V
    .registers 11
    .parameter "gravity"

    .prologue
    const/16 v8, 0x50

    const/16 v7, 0x30

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 109
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v4, v7, :cond_16

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v4, v8, :cond_34

    :cond_16
    move v2, v6

    .line 111
    .local v2, oldIsVertical:Z
    :goto_17
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 113
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v4, v7, :cond_21

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v4, v8, :cond_36

    :cond_21
    move v1, v6

    .line 115
    .local v1, newIsVertical:Z
    :goto_22
    if-eq v2, v1, :cond_33

    .line 116
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 117
    .local v3, tmp:I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 118
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 119
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 121
    .end local v3           #tmp:I
    :cond_33
    return-void

    .end local v1           #newIsVertical:Z
    .end local v2           #oldIsVertical:Z
    :cond_34
    move v2, v5

    .line 109
    goto :goto_17

    .restart local v2       #oldIsVertical:Z
    :cond_36
    move v1, v5

    .line 113
    goto :goto_22
.end method

.method public setSize(I)V
    .registers 6
    .parameter "size"

    .prologue
    const/4 v3, -0x1

    .line 86
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 88
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_15

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_21

    .line 89
    :cond_15
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 95
    :goto_19
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 96
    return-void

    .line 92
    :cond_21
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 93
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_19
.end method

.method public setToken(Landroid/os/IBinder;)V
    .registers 4
    .parameter "token"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 36
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 37
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    return-void
.end method
