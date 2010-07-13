.class Lcom/lge/ota/KTRegiActivity$2;
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
    .line 132
    iput-object p1, p0, Lcom/lge/ota/KTRegiActivity$2;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity$2;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-virtual {v0}, Lcom/lge/ota/KTRegiActivity;->KTF_RegiProcess()V

    .line 135
    return-void
.end method
