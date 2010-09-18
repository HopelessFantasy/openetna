.class public Lcom/lge/hiddenmenu/streaming/Streaming;
.super Landroid/app/ListActivity;
.source "Streaming.java"


# static fields
.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private selectMenuItem(I)V
    .registers 9
    .parameter "id"

    .prologue
    const v6, 0x7f0800ff

    const v5, 0x7f0800fe

    const v4, 0x7f02003a

    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 61
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 63
    .local v2, packageName2:Ljava/lang/String;
    packed-switch p1, :pswitch_data_80

    .line 113
    :goto_13
    if-eqz v0, :cond_34

    .line 114
    const-string v3, "com.lge.hiddenmenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/streaming/Streaming;->startActivity(Landroid/content/Intent;)V

    .line 117
    :cond_34
    return-void

    .line 65
    :pswitch_35
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Edit enable?"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/lge/hiddenmenu/streaming/Streaming$2;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/streaming/Streaming$2;-><init>(Lcom/lge/hiddenmenu/streaming/Streaming;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/lge/hiddenmenu/streaming/Streaming$1;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/streaming/Streaming$1;-><init>(Lcom/lge/hiddenmenu/streaming/Streaming;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_13

    .line 88
    :pswitch_5a
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "RTSP Log enabled?"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/lge/hiddenmenu/streaming/Streaming$4;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/streaming/Streaming$4;-><init>(Lcom/lge/hiddenmenu/streaming/Streaming;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/lge/hiddenmenu/streaming/Streaming$3;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/streaming/Streaming$3;-><init>(Lcom/lge/hiddenmenu/streaming/Streaming;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_13

    .line 63
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_35
        :pswitch_5a
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f06000b

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/streaming/Streaming;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 33
    iget-object v0, p0, Lcom/lge/hiddenmenu/streaming/Streaming;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/streaming/Streaming;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/lge/hiddenmenu/streaming/Streaming;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/streaming/Streaming;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 46
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 47
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/streaming/Streaming;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 50
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 55
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/streaming/Streaming;->selectMenuItem(I)V

    .line 56
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 39
    return-void
.end method
