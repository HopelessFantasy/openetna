.class Lcom/lge/hiddenmenu/kr_setting/KRSetting$1;
.super Ljava/lang/Object;
.source "KRSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/kr_setting/KRSetting;->selectMenuItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/kr_setting/KRSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/hiddenmenu/kr_setting/KRSetting$1;->this$0:Lcom/lge/hiddenmenu/kr_setting/KRSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 107
    return-void
.end method
