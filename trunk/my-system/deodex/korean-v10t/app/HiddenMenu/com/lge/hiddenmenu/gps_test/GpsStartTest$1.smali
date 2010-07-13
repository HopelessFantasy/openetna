.class Lcom/lge/hiddenmenu/gps_test/GpsStartTest$1;
.super Ljava/lang/Object;
.source "GpsStartTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->checkGpsSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$1;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$1;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->finish()V

    .line 156
    return-void
.end method
