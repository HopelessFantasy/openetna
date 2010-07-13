.class Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener$1;
.super Ljava/lang/Object;
.source "GpsStartTestSingleFix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->printScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;)V
    .registers 2
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener$1;->this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 447
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener$1;->this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->access$1100(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;)I

    move-result v1

    if-lez v1, :cond_9

    .line 458
    :cond_8
    :goto_8
    return-void

    .line 451
    :cond_9
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener$1;->this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;

    iget-object v1, v1, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener$1;->this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->access$1100(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;)I

    move-result v1

    if-gtz v1, :cond_8

    .line 457
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener$1;->this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;

    iget-object v1, v1, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$500(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method
