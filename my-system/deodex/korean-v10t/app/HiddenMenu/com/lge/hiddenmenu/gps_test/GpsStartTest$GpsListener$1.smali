.class Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener$1;
.super Ljava/lang/Object;
.source "GpsStartTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->printScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener$1;->this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 406
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener$1;->this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;)I

    move-result v1

    if-lez v1, :cond_9

    .line 417
    :cond_8
    :goto_8
    return-void

    .line 410
    :cond_9
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener$1;->this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;

    iget-object v1, v1, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener$1;->this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;)I

    move-result v1

    if-gtz v1, :cond_8

    .line 416
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener$1;->this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;

    iget-object v1, v1, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$100(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method
