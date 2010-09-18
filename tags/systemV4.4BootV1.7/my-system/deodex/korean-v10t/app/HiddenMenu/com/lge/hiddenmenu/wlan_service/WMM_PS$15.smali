.class Lcom/lge/hiddenmenu/wlan_service/WMM_PS$15;
.super Ljava/lang/Object;
.source "WMM_PS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 185
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$15;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 187
    if-nez p2, :cond_d

    if-ne p3, v2, :cond_d

    .line 189
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$15;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    aput v2, v0, v3

    .line 191
    :cond_d
    if-ne p2, v2, :cond_17

    if-ne p3, v2, :cond_17

    .line 193
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$15;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    aput v2, v0, v1

    .line 195
    :cond_17
    if-ne p2, v1, :cond_21

    if-ne p3, v2, :cond_21

    .line 197
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$15;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    aput v2, v0, v2

    .line 199
    :cond_21
    if-ne p2, v3, :cond_2c

    if-ne p3, v2, :cond_2c

    .line 201
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$15;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 204
    :cond_2c
    return-void
.end method
