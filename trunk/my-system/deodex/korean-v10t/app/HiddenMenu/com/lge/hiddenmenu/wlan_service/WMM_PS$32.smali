.class Lcom/lge/hiddenmenu/wlan_service/WMM_PS$32;
.super Ljava/lang/Object;
.source "WMM_PS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 377
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$32;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$32;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->showDialog(I)V

    .line 380
    return-void
.end method
