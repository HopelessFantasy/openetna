.class Lcom/lge/hiddenmenu/wlan_service/WMM_PS$12;
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


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$12;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$12;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 161
    return-void
.end method
