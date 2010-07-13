.class Lcom/android/contacts/TwelveKeyDialer$4;
.super Landroid/os/Handler;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/TwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;)V
    .registers 2
    .parameter

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$4;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1271
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 1276
    :goto_5
    return-void

    .line 1273
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$4;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/TwelveKeyDialer;->access$600(Lcom/android/contacts/TwelveKeyDialer;Z)V

    goto :goto_5

    .line 1271
    nop

    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method
