.class Lcom/lge/hiddenmenu/gps_test/GpsStartTest$3;
.super Ljava/lang/Object;
.source "GpsStartTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->output(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$3;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    iput-object p2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$3;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$3;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->access$100(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$3;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method
