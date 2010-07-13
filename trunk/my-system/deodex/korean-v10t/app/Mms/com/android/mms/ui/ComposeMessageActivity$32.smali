.class Lcom/android/mms/ui/ComposeMessageActivity$32;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->creationAttachYN(Landroid/content/Context;Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 4749
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4750
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$32;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7600(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V

    .line 4751
    return-void
.end method
