.class Landroid/webkit/CallbackProxy$5;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CallbackProxy;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CallbackProxy;

.field final synthetic val$res:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Landroid/webkit/CallbackProxy$5;->this$0:Landroid/webkit/CallbackProxy;

    iput-object p2, p0, Landroid/webkit/CallbackProxy$5;->val$res:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 483
    iget-object v0, p0, Landroid/webkit/CallbackProxy$5;->val$res:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 484
    return-void
.end method