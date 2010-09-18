.class Lcom/android/calendar/EditEvent$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    .line 454
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 455
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 461
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v2}, Lcom/android/calendar/EditEvent;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 462
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v2, p3}, Lcom/android/calendar/EditEvent;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 463
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_10
    :goto_10
    return-void

    .line 465
    :cond_11
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2, p3}, Lcom/android/calendar/EditEvent;->access$902(Lcom/android/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 466
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v2, p3}, Lcom/android/calendar/EditEvent;->startManagingCursor(Landroid/database/Cursor;)V

    .line 469
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v2}, Lcom/android/calendar/EditEvent;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 474
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_71

    .line 476
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$1000(Lcom/android/calendar/EditEvent;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 477
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$1100(Lcom/android/calendar/EditEvent;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 482
    :cond_3d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080036

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 488
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/calendar/EditEvent;->access$1202(Lcom/android/calendar/EditEvent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_10

    .line 493
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_71
    new-instance v0, Lcom/android/calendar/EditEvent$CalendarsAdapter;

    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v4, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$900(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/calendar/EditEvent$CalendarsAdapter;-><init>(Lcom/android/calendar/EditEvent;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 494
    .local v0, adapter:Lcom/android/calendar/EditEvent$CalendarsAdapter;
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$1300(Lcom/android/calendar/EditEvent;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 495
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/calendar/EditEvent;->access$1402(Lcom/android/calendar/EditEvent;Z)Z

    .line 496
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$1000(Lcom/android/calendar/EditEvent;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 497
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$1100(Lcom/android/calendar/EditEvent;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 498
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$1500(Lcom/android/calendar/EditEvent;)Z

    .line 499
    iget-object v2, p0, Lcom/android/calendar/EditEvent$QueryHandler;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v2}, Lcom/android/calendar/EditEvent;->finish()V

    goto/16 :goto_10
.end method
