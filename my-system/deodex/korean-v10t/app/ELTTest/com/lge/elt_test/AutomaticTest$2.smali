.class Lcom/lge/elt_test/AutomaticTest$2;
.super Ljava/lang/Object;
.source "AutomaticTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/elt_test/AutomaticTest;->setCameraVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/elt_test/AutomaticTest;


# direct methods
.method constructor <init>(Lcom/lge/elt_test/AutomaticTest;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lge/elt_test/AutomaticTest$2;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest$2;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v0}, Lcom/lge/elt_test/AutomaticTest;->access$400(Lcom/lge/elt_test/AutomaticTest;)Lcom/lge/elt_test/CameraPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/elt_test/AutomaticTest$2;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v1}, Lcom/lge/elt_test/AutomaticTest;->access$300(Lcom/lge/elt_test/AutomaticTest;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/elt_test/CameraPreview;->setVisibility(I)V

    .line 163
    return-void
.end method
