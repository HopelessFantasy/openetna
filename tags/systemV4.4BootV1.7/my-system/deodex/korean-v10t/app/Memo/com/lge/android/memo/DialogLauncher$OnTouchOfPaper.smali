.class public Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;
.super Ljava/lang/Object;
.source "DialogLauncher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/memo/DialogLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnTouchOfPaper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/memo/DialogLauncher;


# direct methods
.method public constructor <init>(Lcom/lge/android/memo/DialogLauncher;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "event"

    .prologue
    const v5, 0x7f02001c

    const v4, 0x7f020024

    const v3, 0x7f020004

    const v2, 0x7f020003

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 363
    .local v0, paperId:I
    packed-switch v0, :pswitch_data_dc

    .line 407
    :goto_13
    const/4 v1, 0x0

    return v1

    .line 365
    :pswitch_15
    const/4 v1, 0x6

    sput v1, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 367
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 368
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 371
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 374
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Yellow Paper Pressed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_13

    .line 379
    :pswitch_56
    const/4 v1, 0x7

    sput v1, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 381
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 382
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 385
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 388
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 390
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Brown Paper Pressed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 393
    :pswitch_98
    const/16 v1, 0x8

    sput v1, Lcom/lge/android/memo/DialogLauncher;->styleID:I

    .line 395
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 396
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$000(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 399
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$100(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 401
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 402
    iget-object v1, p0, Lcom/lge/android/memo/DialogLauncher$OnTouchOfPaper;->this$0:Lcom/lge/android/memo/DialogLauncher;

    invoke-static {v1}, Lcom/lge/android/memo/DialogLauncher;->access$200(Lcom/lge/android/memo/DialogLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Blue Paper Pressed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 363
    nop

    :pswitch_data_dc
    .packed-switch 0x7f080017
        :pswitch_15
        :pswitch_56
        :pswitch_98
    .end packed-switch
.end method
