.class Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$2;
.super Ljava/lang/Object;
.source "FormatSDCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->completedFormatSDCard(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$2;->this$0:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$2;->this$0:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;

    sget-object v1, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->READY:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->access$002(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;)Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    .line 161
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$2;->this$0:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->finish()V

    .line 162
    return-void
.end method
