.class Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$4;
.super Ljava/lang/Object;
.source "GpsStartTestSingleFix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->output(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$4;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    iput-object p2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$4;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$4;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->access$500(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$4;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    return-void
.end method
