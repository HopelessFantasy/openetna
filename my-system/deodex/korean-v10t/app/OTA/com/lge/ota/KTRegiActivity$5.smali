.class Lcom/lge/ota/KTRegiActivity$5;
.super Ljava/lang/Object;
.source "KTRegiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/ota/KTRegiActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 157
    iput-object p1, p0, Lcom/lge/ota/KTRegiActivity$5;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity$5;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v0}, Lcom/lge/ota/KTRegiActivity;->access$100(Lcom/lge/ota/KTRegiActivity;)Landroid/os/PowerManager;

    move-result-object v0

    const-string v1, "ota"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 160
    return-void
.end method
