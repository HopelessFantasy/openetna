.class Lcom/lge/ota/KTRegiActivity$1;
.super Landroid/os/Handler;
.source "KTRegiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/ota/KTRegiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/ota/KTRegiActivity;


# direct methods
.method constructor <init>(Lcom/lge/ota/KTRegiActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lge/ota/KTRegiActivity$1;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 83
    :goto_5
    return-void

    .line 79
    :pswitch_6
    const-string v0, "TAG"

    const-string v1, "EVENT_SERVICE_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity$1;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v0}, Lcom/lge/ota/KTRegiActivity;->access$000(Lcom/lge/ota/KTRegiActivity;)V

    goto :goto_5

    .line 76
    nop

    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method
