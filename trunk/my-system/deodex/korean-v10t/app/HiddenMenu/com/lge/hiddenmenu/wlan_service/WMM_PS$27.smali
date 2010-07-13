.class Lcom/lge/hiddenmenu/wlan_service/WMM_PS$27;
.super Ljava/lang/Object;
.source "WMM_PS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

.field final synthetic val$listenInterval:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$27;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iput-object p2, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$27;->val$listenInterval:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$27;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$27;->val$listenInterval:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 321
    return-void
.end method
