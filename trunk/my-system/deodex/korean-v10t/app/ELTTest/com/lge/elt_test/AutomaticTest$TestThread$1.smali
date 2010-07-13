.class Lcom/lge/elt_test/AutomaticTest$TestThread$1;
.super Ljava/lang/Object;
.source "AutomaticTest.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/elt_test/AutomaticTest$TestThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/elt_test/AutomaticTest$TestThread;


# direct methods
.method constructor <init>(Lcom/lge/elt_test/AutomaticTest$TestThread;)V
    .registers 2
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/lge/elt_test/AutomaticTest$TestThread$1;->this$1:Lcom/lge/elt_test/AutomaticTest$TestThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mp"

    .prologue
    const/4 v2, 0x3

    .line 255
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest$TestThread$1;->this$1:Lcom/lge/elt_test/AutomaticTest$TestThread;

    iget-object v0, v0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v1, "Stopped"

    invoke-static {v0, v2, v1}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 256
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 257
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 258
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest$TestThread$1;->this$1:Lcom/lge/elt_test/AutomaticTest$TestThread;

    iget-object v0, v0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v1, "Playing"

    invoke-static {v0, v2, v1}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 259
    return-void
.end method
