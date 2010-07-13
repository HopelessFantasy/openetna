.class public Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;
.super Ljava/lang/Object;
.source "DialogLauncher.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/memo/DialogLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnArrowKeyNavigationOnPaper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/memo/DialogLauncher;


# direct methods
.method public constructor <init>(Lcom/lge/android/memo/DialogLauncher;)V
    .registers 2
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v6, 0x7f02001c

    const v5, 0x7f020024

    const v4, 0x7f020004

    const v3, 0x7f020003

    .line 416
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_1c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_23

    .line 418
    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 419
    .local v0, paperId:I
    packed-switch v0, :pswitch_data_ec

    .line 461
    .end local v0           #paperId:I
    :cond_23
    :goto_23
    const/4 v1, 0x0

    return v1

    .line 421
    .restart local v0       #paperId:I
    :pswitch_25
    const/4 v1, 0x6

    sput v1, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 422
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 423
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 426
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 428
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 429
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Yellow Paper Key Pressed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_23

    .line 433
    :pswitch_66
    const/4 v1, 0x7

    sput v1, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 434
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 435
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 438
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 441
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Brown Paper Key Pressed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 445
    :pswitch_a8
    const/16 v1, 0x8

    sput v1, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 447
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 448
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 450
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 451
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 453
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 454
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnArrowKeyNavigationOnPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Blue Paper Key Pressed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 419
    nop

    :pswitch_data_ec
    .packed-switch 0x7f080017
        :pswitch_25
        :pswitch_66
        :pswitch_a8
    .end packed-switch
.end method
