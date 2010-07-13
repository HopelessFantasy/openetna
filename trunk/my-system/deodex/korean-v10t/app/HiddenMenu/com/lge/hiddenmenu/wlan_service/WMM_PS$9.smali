.class Lcom/lge/hiddenmenu/wlan_service/WMM_PS$9;
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
    .line 131
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$9;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$9;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, items:[Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$9;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iget-object v1, v1, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->list:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 135
    return-void
.end method
