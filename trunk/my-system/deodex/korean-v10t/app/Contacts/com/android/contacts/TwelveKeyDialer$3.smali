.class Lcom/android/contacts/TwelveKeyDialer$3;
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
    .line 1048
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$3;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1049
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 1055
    :goto_5
    return-void

    .line 1051
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$3;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$500(Lcom/android/contacts/TwelveKeyDialer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_5

    .line 1049
    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method
